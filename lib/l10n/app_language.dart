import 'package:flutter/widgets.dart';

enum AppLanguage { en, sorani, kurmanji, ar }

extension AppLanguageX on AppLanguage {
  String get code => switch (this) {
        AppLanguage.en => 'en',
        AppLanguage.sorani => 'ku',
        AppLanguage.kurmanji => 'kmr',
        AppLanguage.ar => 'ar',
      };

  String get nativeName => switch (this) {
        AppLanguage.en => 'English',
        AppLanguage.sorani => 'کوردی (سۆرانی)',
        AppLanguage.kurmanji => 'Kurdî (Kurmancî)',
        AppLanguage.ar => 'العربية',
      };

  TextDirection get textDirection => switch (this) {
        AppLanguage.en => TextDirection.ltr,
        AppLanguage.sorani => TextDirection.rtl,
        AppLanguage.kurmanji => TextDirection.ltr,
        AppLanguage.ar => TextDirection.rtl,
      };
}
