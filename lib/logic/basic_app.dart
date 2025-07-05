import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../UI/main_screen.dart';
import 'theme_logic.dart';
import 'font_logic.dart';

class BasicApp extends StatelessWidget {
  // const BasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeIndex = context.watch<ThemeLogic>().themeIndex;
    final fontSize = context.watch<FontLogic>().size;

    ThemeMode mode;
    switch (themeIndex) {
      case 1:
        mode = ThemeMode.dark;
        break;
      case 2:
        mode = ThemeMode.light;
        break;
      default:
        mode = ThemeMode.system;
    }

    return Builder(
      builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MainScreen(),
          themeMode: mode,
          theme: _lightTheme(fontSize),
          darkTheme: _darkTheme(fontSize),
        );
      },
    );
  }

  ThemeData _lightTheme(double fontSize) {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(bodyMedium: TextStyle(fontSize: fontSize, color: Colors.black)),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
      ),
      drawerTheme: DrawerThemeData(backgroundColor: Colors.white),
    );
  }

  ThemeData _darkTheme(double fontSize) {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Color(0xFF181B20),
      textTheme: TextTheme(bodyMedium: TextStyle(fontSize: fontSize, color: Colors.white)),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
      ),
      drawerTheme: DrawerThemeData(backgroundColor: Colors.black),
      listTileTheme: ListTileThemeData(
        textColor: Colors.white,
      ),
    );
  }
}
