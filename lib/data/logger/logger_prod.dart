import 'package:loggy/loggy.dart';
import 'package:whm_places/data/logger/logger.dart';
import 'package:whm_places/data/logger/logger_types.dart';


/// Logger implementation in prod environment
/// [WhitelistFilter] in initLoggy is empty, it means no logs will be printed
class LoggerProd implements Logger {

  LoggerProd() {
    Loggy.initLoggy(
      filters: [
        const WhitelistFilter([]),
      ],
    );
  }
  @override
  final analytic = AnalyticLoggy().loggy;

  @override
  final data = DataLoggy().loggy;

  @override
  final domain = DomainLoggy().loggy;

  @override
  final p = PresentationLoggy().loggy;
}
