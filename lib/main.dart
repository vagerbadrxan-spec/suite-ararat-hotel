import 'package:flutter/material.dart';
import 'l10n/app_language.dart';
import 'pages/home_page.dart';
import 'pages/rooms_page.dart';
import 'state/language_scope.dart';

void main() {
  runApp(const HotelApp());
}

class HotelApp extends StatefulWidget {
  const HotelApp({super.key});

  @override
  State<HotelApp> createState() => _HotelAppState();
}

class _HotelAppState extends State<HotelApp> {
  AppLanguage _language = AppLanguage.en;

  void _setLanguage(AppLanguage language) {
    setState(() => _language = language);
  }

  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFFC08552);
    const secondary = Color(0xFF2F4858);

    return LanguageScope(
      language: _language,
      onChanged: _setLanguage,
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'Suite Ararat Hotel',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSeed(
                seedColor: primary,
                primary: primary,
                secondary: secondary,
              ),
              scaffoldBackgroundColor: const Color(0xFFFAF6F0),
              fontFamilyFallback: const ['NotoSansArabic'],
            ),
            builder: (context, child) {
              return Directionality(
                textDirection: _language.textDirection,
                child: child!,
              );
            },
            initialRoute: '/',
            routes: {
              '/': (context) => const HomePage(),
              '/rooms': (context) => const RoomsPage(),
            },
          );
        },
      ),
    );
  }
}
