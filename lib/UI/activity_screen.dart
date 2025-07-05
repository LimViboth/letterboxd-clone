import 'package:flutter/material.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tabBarTheme = theme.tabBarTheme;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Activity',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: theme.cardColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TabBar(
                  unselectedLabelColor:
                  tabBarTheme.unselectedLabelColor ?? theme.hintColor,
                  labelStyle: tabBarTheme.labelStyle ??
                      theme.textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),
                  unselectedLabelStyle:
                  tabBarTheme.unselectedLabelStyle ?? theme.textTheme.labelLarge,
                  tabs: [
                    Tab(text: "Friends"),
                    Tab(text: "You"),
                    Tab(text: "Incoming"),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          physics: BouncingScrollPhysics(),
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "No activity.",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Nothing let but some damn rocks on the",
                    style: TextStyle(fontSize: 16,),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Window still. And that cupcake on the wall",
                    style: TextStyle(fontSize: 16,),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "No activity.",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Game over, man! It's game over!",
                    style: TextStyle(fontSize: 16,),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "No activity.",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "And If I stop thinking about you, if I stop",
                    style: TextStyle(fontSize: 16,),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Thinking about anything, it disappear",
                    style: TextStyle(fontSize: 16,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
