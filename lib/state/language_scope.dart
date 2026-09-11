import 'package:flutter/widgets.dart';
import '../l10n/app_language.dart';

class LanguageScope extends InheritedWidget {
  final AppLanguage language;
  final ValueChanged<AppLanguage> onChanged;

  const LanguageScope({
    super.key,
    required this.language,
    required this.onChanged,
    required super.child,
  });

  static LanguageScope of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<LanguageScope>();
    assert(scope != null, 'No LanguageScope found in context');
    return scope!;
  }

  @override
  bool updateShouldNotify(LanguageScope oldWidget) =>
      oldWidget.language != language;
}
