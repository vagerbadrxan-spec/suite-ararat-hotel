import 'package:flutter/material.dart';
import '../l10n/app_language.dart';
import '../state/language_scope.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final scope = LanguageScope.of(context);
    return PopupMenuButton<AppLanguage>(
      initialValue: scope.language,
      icon: const Icon(Icons.language),
      tooltip: 'Language',
      onSelected: scope.onChanged,
      itemBuilder: (context) => AppLanguage.values
          .map(
            (lang) => PopupMenuItem(
              value: lang,
              child: Text(lang.nativeName),
            ),
          )
          .toList(),
    );
  }
}
