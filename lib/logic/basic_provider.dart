import 'package:flutter/material.dart';
import 'package:letterboxd/logic/basic_app.dart';
import 'package:letterboxd/logic/theme_logic.dart';
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