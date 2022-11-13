import 'package:helpdesk/utils/prettier_logger/prettier_printer.dart';
import 'package:logger/logger.dart';

const kLogNewLine = '\n   ';

class PrettierLogger extends Logger {
  PrettierLogger(String className)
      : super(
            level: Level.verbose,
            printer: PrettierPrinter(
                methodCount: 0,
                colors: true,
                printTime: false,
                stackTraceBeginIndex: 3,
                className: className));
} 


// Logger getLogger(String className,
//     {int methodCount = 0, bool printTime = false}) {
//   String _className = className;

//   return Logger(
//       level: Level.verbose,
//       printer: PrettierPrinter(
//           methodCount: methodCount,
//           colors: true,
//           printTime: printTime,
//           stackTraceBeginIndex: 3,
//           className: _className));
// }