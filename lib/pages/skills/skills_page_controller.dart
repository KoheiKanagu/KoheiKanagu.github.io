import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:koheikanagu_github_io/main.dart';

class SkillsPageController {
  SkillsPageController() : super();

  Future<String> fetchSkillMd() async {
    try {
      final url = Uri.parse('../skills.md');
      final response = await http.get(url);
      return const Utf8Decoder().convert(response.bodyBytes);

      // ignore: avoid_catches_without_on_clauses
    } catch (error, stack) {
      logger.error('failed', error, stack);
    }
    return 'error';
  }
}
