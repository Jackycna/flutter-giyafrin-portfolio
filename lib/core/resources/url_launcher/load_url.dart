import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class LoadUrl {
  static Future<void> loadCommonUrls(String url) async {
    try {
      final uri = Uri.parse(url);
      await launchUrl(uri);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static Future<void> loadPersonalEmail(String element, String type) async {
    try {
      final uri = Uri(scheme: type, path: element);
      await launchUrl(uri);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
