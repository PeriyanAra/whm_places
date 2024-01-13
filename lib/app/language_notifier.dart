import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageNotifier with ChangeNotifier {
  LanguageNotifier() {
    _loadLanguages();
  }

  String _language = 'en';
  final _languageCodes = <String>['en', 'es', 'pt', 'it'];

  String get language => _language;
  List<String> get languageCodes => _languageCodes;

  Future<void> _loadLanguages() async {
    final prefs = await SharedPreferences.getInstance();
    final languageString = prefs.getString('language');
    if (languageString != null && _language != languageString) {
      _language = languageString;
    }
    notifyListeners();
  }

  Future<void> updateLanguage(String language) async {
    if (_language != language) {
      _language = language;
      notifyListeners();

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('language', language);
    }
  }
}
