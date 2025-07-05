import 'package:flutter/material.dart';
import 'package:letterboxd/UI/activity_screen.dart';
import 'package:letterboxd/UI/add_screen.dart';
import 'package:letterboxd/UI/home_screen.dart';
import 'package:letterboxd/UI/review_screen.dart';
import 'package:letterboxd/UI/list_screen.dart';
import 'package:letterboxd/UI/journal_screen.dart';
import 'package:letterboxd/UI/search_screen.dart';
import 'package:letterboxd/UI/user_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    _TabScreen(),
    SearchScreen(),
    AddScreen(),
    ActivityScreen(),
    UserScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bottomTheme = theme.bottomNavigationBarTheme;

    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: bottomTheme.selectedItemColor,
        unselectedItemColor: bottomTheme.unselectedItemColor,
        backgroundColor: bottomTheme.backgroundColor,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.flash_on), label: 'Activity'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
        ],
      ),
    );
  }
}

class _TabScreen extends StatelessWidget {
  const _TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tabBarTheme = theme.tabBarTheme;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Letterboxd",
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: theme.cardColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelColor:
                  tabBarTheme.unselectedLabelColor ?? theme.hintColor,
                  labelStyle: tabBarTheme.labelStyle ??
                      theme.textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),
                  unselectedLabelStyle:
                  tabBarTheme.unselectedLabelStyle ?? theme.textTheme.labelLarge,
                  tabs: [
                    Tab(text: "Films"),
                    Tab(text: "Reviews"),
                    Tab(text: "Lists"),
                    Tab(text: "Journal"),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          physics: BouncingScrollPhysics(),
          children: [
            HomeScreen(),
            ReviewScreen(),
            ListScreen(),
            JournalScreen(),
          ],
        ),
      ),
    );
  }
}
