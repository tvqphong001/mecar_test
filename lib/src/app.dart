import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:inter_view_mecar/binding/init_binding.dart';
import 'package:inter_view_mecar/config/language/language.dart';
import 'package:inter_view_mecar/config/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:inter_view_mecar/utils/colors/colors.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetMaterialApp(
    theme: _lightTheme(),
    darkTheme: _darkTheme(),
    translations: Language(),
    initialBinding: InitBinding(),
    locale: const Locale('en', 'EN'),
    fallbackLocale: const Locale('en', 'EN'),
    // locale: Locale(Platform.localeName),
    localizationsDelegates: const [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      RefreshLocalizations.delegate,
    ],
    supportedLocales: const [
      Locale('en', 'EN'),
      Locale('vi', 'VN'),
    ],
    getPages: AppPages.pages,
    initialRoute: Routes.splash,
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.rightToLeft,
  );
}

ThemeData _darkTheme() {
  final theme = ThemeData.dark();
  return theme.copyWith(
    primaryColor: ColorsApp.primaryDark,
    // highlightColor: ColorsApp.secondaryDark,
    cardColor: ColorsApp.secondaryDark,
    iconTheme: theme.iconTheme.copyWith(color: ColorsApp.secondaryDark),
    scaffoldBackgroundColor: ColorsApp.scaffoldDark,
    textSelectionTheme: theme.textSelectionTheme.copyWith(
      cursorColor: ColorsApp.secondaryDark,
      selectionHandleColor: ColorsApp.secondaryDark,
      selectionColor: ColorsApp.secondaryDark,
    ),
    textTheme: theme.textTheme.copyWith(
      subtitle1: GoogleFonts.comfortaa()
          .copyWith(fontSize: 36, color: ColorsApp.textDark),
      button: theme.textTheme.button!.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 13,
      ),
      bodyText1: theme.textTheme.button!.copyWith(
        fontSize: 13,
      ),
      caption:
      theme.textTheme.caption!.copyWith(fontSize: 11, color: Colors.white),
    ),
  );
}

ThemeData _lightTheme() {
  final theme = ThemeData.light();
  return theme.copyWith(
    primaryColor: ColorsApp.primaryLight,
    // highlightColor: ColorsApp.secondaryLight,
    cardColor: ColorsApp.secondaryLight,
    scaffoldBackgroundColor: ColorsApp.scaffoldLight,
    iconTheme: theme.iconTheme.copyWith(color: ColorsApp.secondaryLight),
    textSelectionTheme: theme.textSelectionTheme.copyWith(
      cursorColor: ColorsApp.secondaryLight,
      selectionHandleColor: ColorsApp.secondaryLight,
      selectionColor: ColorsApp.secondaryLight,
    ),
    textTheme: theme.textTheme.copyWith(
      subtitle1: GoogleFonts.comfortaa()
          .copyWith(fontSize: 36, color: ColorsApp.textLight),
      button: theme.textTheme.button!.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 13,
      ),
      bodyText1: theme.textTheme.button!.copyWith(
        fontSize: 13,
      ),
      caption:
      theme.textTheme.caption!.copyWith(fontSize: 11, color: Colors.black),
    ),
  );
}
