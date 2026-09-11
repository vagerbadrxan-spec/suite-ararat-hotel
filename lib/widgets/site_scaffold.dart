import 'package:flutter/material.dart';
import '../l10n/translations.dart';
import 'language_switcher.dart';

class SiteScaffold extends StatelessWidget {
  final Widget body;
  final String currentRoute;

  const SiteScaffold({
    super.key,
    required this.body,
    required this.currentRoute,
  });

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width >= 720;
    return Scaffold(
      appBar: AppBar(
        title: Text(context.t('appName')),
        actions: [
          if (isWide) ...[
            _NavButton(label: context.t('navHome'), route: '/', current: currentRoute),
            _NavButton(label: context.t('navRooms'), route: '/rooms', current: currentRoute),
            const SizedBox(width: 8),
          ],
          const LanguageSwitcher(),
          const SizedBox(width: 8),
        ],
      ),
      drawer: isWide
          ? null
          : Drawer(
              child: SafeArea(
                child: ListView(
                  children: [
                    ListTile(
                      title: Text(context.t('navHome')),
                      selected: currentRoute == '/',
                      onTap: () {
                        Navigator.pop(context);
                        if (currentRoute != '/') {
                          Navigator.pushReplacementNamed(context, '/');
                        }
                      },
                    ),
                    ListTile(
                      title: Text(context.t('navRooms')),
                      selected: currentRoute == '/rooms',
                      onTap: () {
                        Navigator.pop(context);
                        if (currentRoute != '/rooms') {
                          Navigator.pushReplacementNamed(context, '/rooms');
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
      body: SafeArea(child: body),
    );
  }
}

class _NavButton extends StatelessWidget {
  final String label;
  final String route;
  final String current;

  const _NavButton({
    required this.label,
    required this.route,
    required this.current,
  });

  @override
  Widget build(BuildContext context) {
    final selected = route == current;
    return TextButton(
      onPressed: selected ? null : () => Navigator.pushReplacementNamed(context, route),
      child: Text(
        label,
        style: TextStyle(
          fontWeight: selected ? FontWeight.bold : FontWeight.normal,
          decoration: selected ? TextDecoration.underline : null,
        ),
      ),
    );
  }
}
