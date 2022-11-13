// import 'package:flutter/cupertino.dart';
import 'package:helpdesk/design_system/themes/text_theme_light.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    fontFamily: 'NotoSans',
    // colorSchemeSeed: const Color(0xFF2AA5DF),
    // colorScheme: lightColorScheme,
    useMaterial3: true,
    // scaffoldBackgroundColor: lightColorScheme.surface,
    // primaryColor: const Color(0xFF2AA5DF),
    // primarySwatch: Colors.blue,
    // primaryColorDark: const Color(0xff6C90EE),
    // primaryColorLight: const Color(0xff090729),
    // // highlightColor: new Color(0xFF20388B),
    // selectedRowColor: const Color(0xFF6C90EE),
    // tabBarTheme: const TabBarTheme(
    //     labelStyle: TextStyle(
    //         fontFamily: 'FiraSans',
    //         fontSize: 20.0,
    //         fontWeight: FontWeight.w400),
    //     labelColor: Colors.black,
    //     unselectedLabelColor: Color(0xffFA4E4A),
    //     unselectedLabelStyle:
    //         TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400)),
    // dividerColor: Colors.grey[600],
    // applyElevationOverlayColor: true,
    // scaffoldBackgroundColor: const Color(0xffE5E5E5),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //       visualDensity: const VisualDensity(vertical: 2.0)),
    // ),
    // outlinedButtonTheme: OutlinedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //       visualDensity: const VisualDensity(vertical: 2.0)),
    // ),
    // snackBarTheme: const SnackBarThemeData(
    //   contentTextStyle: TextStyle(fontFamily: 'FiraSans'),
    // ),
    // appBarTheme: const AppBarTheme(
    //     color: Color(0xffE5E5E5),
    //     elevation: 16.0,
    //     iconTheme: IconThemeData(
    //       color: Color(0xff090729),
    //     ),
    //     titleTextStyle: TextStyle(
    //         fontSize: 24.0,
    //         fontWeight: FontWeight.bold,
    //         fontFamily: 'FiraSans',
    //         color: Color(0xff090729))),
    // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    //     backgroundColor:
    //         Colors.transparent, // new Color(0xffE5E5E5).withOpacity(0.90),
    //     elevation: 0.0),
    textTheme: textTheme,
    typography: Typography.material2021(),
  );
}
