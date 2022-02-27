import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:inter_view_mecar/config/language/language.dart';
import 'package:inter_view_mecar/config/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:google_fonts/google_fonts.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetMaterialApp(
      title: 'Flutter Demo',
      theme: _lightTheme,
      darkTheme: _darkTheme,
      translations: Language(),
      locale: const Locale('en', 'EN'),
      fallbackLocale: const Locale('en', 'EN'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        RefreshLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en', 'EN'), // English, no country code
        Locale('vi', 'VN'),
      ],
      getPages: AppPages.pages,
      initialRoute: Routes.splash,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeft,
    );
}

ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.white,
  highlightColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  textTheme: GoogleFonts.robotoTextTheme()
      .copyWith(titleMedium: GoogleFonts.comfortaa().copyWith(fontSize: 36)),
);

ThemeData _lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.black,
  highlightColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  textTheme: GoogleFonts.robotoTextTheme()
      .copyWith(titleMedium: GoogleFonts.comfortaa().copyWith(fontSize: 36)),
);
