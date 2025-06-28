import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }
  int _navIndex = 0;
  Widget _buildBody(){
    return IndexedStack(
      index: _navIndex,
      children: [
        HomeScreen(),
      ],
    );
  }
}
