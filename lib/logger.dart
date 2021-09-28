import 'dart:convert';

import 'package:logger/logger.dart';

final logger = Logger(
  output: _ConsoleOutputWithCrashlytics(),
  printer: MyCrashlyticsLogPrinter(),
  filter: _LogFilter(),
);

class MyCrashlyticsLogPrinter extends LogPrinter {
  static final levelPrefixes = {
    Level.verbose: '[V]',
    Level.debug: '[D]',
    Level.info: '[I]',
    Level.warning: '[W]',
    Level.error: '[E]',
    Level.wtf: '[WTF]',
  };

  @override
  List<String> log(LogEvent event) {
    final message = 'MESSAGE: ${_stringifyMessage(event.message)}';
    final errorString = '${event.error}';
    final object = errorString != 'null' && errorString.isNotEmpty
        ? 'OBJECT: ${event.error}'
        : '';

    final time = 'TIME: ${DateTime.now().toIso8601String()}';
    final traceRawString =
        event.stackTrace.toString().split('\n').take(4).toString();
    final trace = 'STACKTRACE: $traceRawString';
    return ['${levelPrefixes[event.level]}  $time  $message  $object  $trace'];
  }

  String _stringifyMessage(dynamic message) {
    if (message is Map || message is Iterable) {
      const encoder = JsonEncoder.withIndent(null);
      return encoder.convert(message);
    } else {
      return message.toString();
    }
  }
}

extension LoggerExtension on Logger {
  void debug(String message, dynamic object, StackTrace stackTrace) {
    logger.d(message, object, stackTrace);
  }

  void info(String message, dynamic object, StackTrace? stackTrace) {
    logger.i(message, object, stackTrace);
  }

  void warning(String message, dynamic error, StackTrace stackTrace) {
    logger.w(message, error, stackTrace);
  }

  void error(String message, dynamic error, StackTrace stackTrace) {
    logger.e(message, error, stackTrace);
  }
}

class _LogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) => true;
}

class _ConsoleOutputWithCrashlytics extends LogOutput {
  @override
  void output(OutputEvent event) {
    event.lines.forEach(print);
  }
}
