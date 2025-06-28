import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'review_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: _appBar(),
        body: _buildBody(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }
  AppBar _appBar(){
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        "Letterboxd",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(30),
            ),
            child: TabBar(
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                letterSpacing: 0.5,
              ),
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
    );
  }
  Widget _buildBody(){
    return TabBarView(
      physics: BouncingScrollPhysics(),
      children: [
        HomeScreen(),
        ReviewScreen(),
        Center(child: Text("Lists", style: TextStyle(color: Colors.white))),
        Center(child: Text("Journal", style: TextStyle(color: Colors.white))),
      ],
    );
  }
  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.black,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: 'Add'),
        BottomNavigationBarItem(icon: Icon(Icons.flash_on), label: 'Activity'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
      ],
    );
  }
}
