import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:http/http.dart' as http;
import 'package:loggy/loggy.dart';
import 'package:whm_places/data/logger/export.dart';

class ChopperLoggingInterceptor implements RequestInterceptor, ResponseInterceptor {

  factory ChopperLoggingInterceptor(Logger logger) => ChopperLoggingInterceptor._(logger);

  factory ChopperLoggingInterceptor.all(Logger logger) => ChopperLoggingInterceptor._(
        logger,
      );

  factory ChopperLoggingInterceptor.body(Logger logger) => ChopperLoggingInterceptor._(
        logger,
        showHeader: false,
      );

  factory ChopperLoggingInterceptor.header(Logger logger) => ChopperLoggingInterceptor._(
        logger,
        showBody: false,
      );

  ChopperLoggingInterceptor._(
    this._logger, {
    this.showBody = true,
    this.showHeader = true,
  });
  static const _maxWidth = 90;
  final _value = StringBuffer();

  final Logger _logger;
  final bool showBody;
  final bool showHeader;

  @override
  FutureOr<Request> onRequest(Request request) async {
    final base = await request.toBaseRequest();

    _printRequestHeader(base);

    if (showHeader) {
      _prettyPrintObject(request.parameters, header: 'Query Parameters');
      _prettyPrintObject(base.headers, header: 'Headers');
    }

    if (showBody) {
      if (base.method != 'GET') {
        final data = request.body as Object?;

        if (data == null) {
          return request;
        }

        if (request.multipart) {
          _prettyPrintObject(request.parts, header: 'Multipart form data');
        } else {
          _prettyPrintObject(data, header: 'Body');
        }
      }
    }

    _commit(LogLevelExtension.networkRequest);

    return request;
  }

  @override
  FutureOr<Response<Object?>> onResponse(Response<Object?> response) {
    _printResponseHeader(response);

    if (showHeader) {
      _prettyPrintObject(response.headers, header: 'Headers');
    }

    if (showBody) {
      _printResponse(response);
    }

    final logLevel = response.isSuccessful
        ? LogLevelExtension.networkResponse
        : LogLevelExtension.networkResponseError;

    _commit(logLevel);

    return response;
  }

  void logPrint(String value) {
    if (_value.isEmpty) {
      _value.write(value);
    } else {
      _value.write('\n$value');
    }
  }

  void _printResponse(Response<Object?> response) {
    final Object data = response.bodyString;

    _prettyPrintObject(data, header: 'Body');
    }

  void _prettyPrintObject(Object data, {String? header}) {
    String value;

    try {
      final object = const JsonDecoder().convert(data.toString()) as Object;
      const json = JsonEncoder.withIndent('    ');
      value = json.convert(object);
    } catch (e) {
      value = data.toString();
    }

    value = '║  ${value.trim().replaceAll('\n', '\n║  ')}';

    logPrint('╔  $header');
    logPrint('║');
    logPrint(value);
    logPrint('║');
    _printLine(pre: '╚');
  }

  void _printResponseHeader(Response<Object?> response) {
    final uri = response.base.request?.url;
    final method = response.base.request?.method;

    logPrint(
      '$method │ ${response.statusCode} ${response.base.reasonPhrase} │ $uri',
    );
  }

  void _printRequestHeader(http.BaseRequest? options) {
    final uri = options?.url;
    final method = options?.method;
    logPrint('$method │ $uri');
  }

  void _printLine({String pre = '', String suf = '╝'}) {
    logPrint('$pre${'═' * _maxWidth}$suf');
  }

  void _commit(LogLevel level) {
    if (level.priority >= LogLevel.error.priority) {
      final valueError = _value.toString();
      final errorTitle = valueError.substring(0, valueError.indexOf('\n'));
      final errorBody = valueError.substring(errorTitle.length);
      _logger.data.log(level, errorTitle, errorBody);
    } else {
      _logger.data.log(level, _value.toString());
    }
    _value.clear();
  }
}
