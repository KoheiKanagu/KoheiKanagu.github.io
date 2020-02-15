import 'package:flutter/foundation.dart';
import 'package:simple_logger/simple_logger.dart';

final SimpleLogger logger = SimpleLogger()
  ..mode = LoggerMode.print
  ..setLevel(
    kReleaseMode ? Level.SEVERE : Level.ALL,
    includeCallerInfo: kDebugMode,
  );
