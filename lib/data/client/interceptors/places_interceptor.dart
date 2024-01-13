import 'dart:async';

import 'package:chopper/chopper.dart';

class PlacesInterceptor implements RequestInterceptor {
  PlacesInterceptor({
    required String accessKey,
  }) : _accessKey = accessKey;

  final String _accessKey;

  @override
  FutureOr<Request> onRequest(Request request) async {
    final updatedHeaders = Map<String, String>.of(request.headers)
      ..update(
        'Access-Key',
        (String _) => _accessKey,
        ifAbsent: () => _accessKey,
      );

    return request.copyWith(headers: updatedHeaders);
  }
}
