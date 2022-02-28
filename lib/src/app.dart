import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:inter_view_mecar/config/language/language.dart';
import 'package:inter_view_mecar/config/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:inter_view_mecar/utils/colors/colors.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver{

  @override
  void initState() {
    WidgetsBinding.instance?.addObserver(this);
    super.initState();
  }

  @override
  void didChangePlatformBrightness() {
    setState(() {
    });

    super.didChangePlatformBrightness();
  }

  @override
  Widget build(BuildContext context) => GetMaterialApp(
    title: 'Flutter Demo',
    theme: _lightTheme(),
    darkTheme: _darkTheme(),
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

ThemeData _darkTheme() {
  final theme = ThemeData.dark();
  return theme.copyWith(
    primaryColor: ColorsApp.primaryDark,
    highlightColor: ColorsApp.secondaryDark,
    scaffoldBackgroundColor: ColorsApp.secondaryDark,
    textTheme: theme.textTheme.copyWith(
      subtitle1: GoogleFonts.comfortaa().copyWith(fontSize: 36),
      button: theme.textTheme.button!.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 13,
      ),
      caption: theme.textTheme.caption!.copyWith(
          fontSize: 11,
          color: Colors.white
      ),
    ),
  );
}

ThemeData _lightTheme() {
  final theme = ThemeData.light();
  return theme.copyWith(
    primaryColor: ColorsApp.primaryLight,
    highlightColor: ColorsApp.secondaryLight,
    scaffoldBackgroundColor: ColorsApp.secondaryLight,
    textTheme: theme.textTheme.copyWith(
      subtitle1: GoogleFonts.comfortaa().copyWith(fontSize: 36),
      button: theme.textTheme.button!.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 13,
      ),
      caption: theme.textTheme.caption!.copyWith(
          fontSize: 11,
          color: Colors.black
      ),
    ),
  );
}
