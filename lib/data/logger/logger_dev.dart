import 'package:loggy/loggy.dart';
import 'package:whm_places/data/logger/developer_log_printer.dart';
import 'package:whm_places/data/logger/logger.dart';
import 'package:whm_places/data/logger/logger_types.dart';


/// Logger implementation in dev environment
/// to disable logs in concrete layer, comment it in [WhitelistFilter]
class LoggerDev implements Logger {

   LoggerDev() {
    Loggy.initLoggy(
      logPrinter: const DeveloperLogPrinter(),
      filters: [
        const WhitelistFilter(
          [
            AnalyticLoggy,
            DataLoggy,
            DomainLoggy,
            PresentationLoggy,
          ],
        ),
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
