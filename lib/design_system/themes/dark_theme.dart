import 'package:helpdesk/design_system/themes/text_theme_dark.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'NotoSans',
    // colorScheme: darkColorScheme,
    colorSchemeSeed: const Color(0xFF2AA5DF),
    useMaterial3: true,
    // scaffoldBackgroundColor: darkColorScheme.surface,
    // const ColorScheme(
    //     primary: Color(0xff376AED),
    //     // primary: Color(0xff022A80),
    //     secondary: Color(0xffFA4E4A),
    //     // secondaryVariant: Color(0xffFA4E4A),
    //     surface: Color(0xff0B092B),
    //     background: Color(0xff0B092B),
    //     error: Color(0xffAF102E),
    //     onPrimary: Colors.black,
    //     onSecondary: Colors.black,
    //     onSurface: Color(0xffDFDFE3),
    //     onBackground: Colors.white70,
    //     onError: Colors.black,
    //     brightness: Brightness.dark),
    // primaryColor: const Color(0xFF2AA5DF),
    // primaryColorDark: const Color(0xff6C90EE),
    // primaryColorLight: const Color(0xff090729),
    // cardColor: const Color(0xff1B193D),
    // highlightColor: const Color(0xFF20388B),
    // selectedRowColor: const Color(0xFF090729),
    // tabBarTheme: const TabBarTheme(
    //   labelStyle: TextStyle(
    //       fontFamily: 'FiraSans',
    //       fontSize: 17.0,
    //       fontWeight: FontWeight.w400),
    //   labelColor: Colors.white,
    //   unselectedLabelColor: Colors.white60,
    //   unselectedLabelStyle: TextStyle(
    //       fontFamily: 'FiraSans',
    //       fontSize: 17.0,
    //       fontWeight: FontWeight.w400),
    //   indicator: BoxDecoration(
    //     // borderRadius: BorderRadius.circular(50),
    //     border: Border(
    //       bottom: BorderSide(
    //         width: 4.0,
    //         color: Color(0xFFFA4E4A),
    //       ),
    //     ), // Creates border
    //     // color: Colors.greenAccent,
    //   ),
    // ),
    // dividerColor: Colors.grey[400],
    // applyElevationOverlayColor: true,
    // scaffoldBackgroundColor: const Color(0xFF0A0827),
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
    //     backgroundColor: Color(0xFF1E1C3C),
    //     elevation: 0.0,
    //     iconTheme: IconThemeData(
    //       color: Colors.white70,
    //     ),
    //     titleTextStyle: TextStyle(
    //         fontSize: 20.0,
    //         fontWeight: FontWeight.w600,
    //         fontFamily: 'FiraSans',
    //         color: Colors.white70)),
    // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    //     backgroundColor: Colors.transparent, // Color(0xff1E1C3C),
    //     elevation: 16.0,
    //     selectedItemColor: Colors.white,
    //     unselectedItemColor: Colors.white54),
    // iconTheme: const IconThemeData(color: Color(0xFFDFDFE3)),
    textTheme: textThemeDark,
    typography: Typography.material2021(),
  );
}
