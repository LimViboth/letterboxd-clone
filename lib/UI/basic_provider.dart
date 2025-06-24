import 'package:flutter/material.dart';
import 'package:letterboxd/UI/basic_app.dart';
import 'package:letterboxd/UI/theme_logic.dart';
import 'package:provider/provider.dart';

import 'font_logic.dart';
Widget basicProvider(){
  return MultiProvider(
    providers: [
        ChangeNotifierProvider(create: (_) => ThemeLogic()),
        ChangeNotifierProvider(create: (_) => FontLogic()),
    ],
    child: BasicApp(),
  );
}