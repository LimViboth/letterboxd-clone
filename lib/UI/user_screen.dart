import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../logic/font_logic.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final fontSize = context.watch<FontLogic>().size;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: _buildDrawer(fontSize),
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          ),
          title: Text(
            'cj',
            style: TextStyle(
              fontSize: fontSize + 3,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          actions: [
            Icon(Icons.more_horiz),
            SizedBox(width: 16),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TabBar(
                  unselectedLabelColor: Colors.grey,
                  labelStyle: TextStyle(
                    fontSize: fontSize - 3,
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontSize: fontSize - 3,
                    fontWeight: FontWeight.w400,
                  ),
                  tabs: [
                    Tab(text: "Profile"),
                    Tab(text: "Diary"),
                    Tab(text: "Lists"),
                    Tab(text: "Watchlist"),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          physics: BouncingScrollPhysics(),
          children: [
            _ProfileTab(),
            _buildNoDiaryTab(fontSize),
            _buildListTab(fontSize),
            _buildWatchList(fontSize),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawer(double fontSize) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.black87),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: fontSize + 7),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile', style: TextStyle(fontSize: fontSize)),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings', style: TextStyle(fontSize: fontSize)),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout', style: TextStyle(fontSize: fontSize)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  context.read<FontLogic>().decrease();
                },
                icon: Icon(Icons.text_decrease_rounded),
              ),
              IconButton(
                onPressed: () {
                  context.read<FontLogic>().increase();
                },
                icon: Icon(Icons.text_increase_rounded),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }

  Widget _buildNoDiaryTab(double fontSize) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("No Diary", style: TextStyle(fontSize: fontSize)),
          SizedBox(height: 10),
          Text("Nothing has been added to your diary", style: TextStyle(fontSize: fontSize - 1)),
        ],
      ),
    );
  }

  Widget _buildListTab(double fontSize) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("No activity.", style: TextStyle(fontSize: fontSize)),
          SizedBox(height: 10),
          Text("Nothing left but some damn rocks on the", style: TextStyle(fontSize: fontSize - 1)),
          SizedBox(height: 5),
          Text("window sill. And that cupcake on the wall", style: TextStyle(fontSize: fontSize - 1)),
        ],
      ),
    );
  }

  Widget _buildWatchList(double fontSize) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("No films", style: TextStyle(fontSize: fontSize)),
          SizedBox(height: 10),
          Text("Houston, we have a problem", style: TextStyle(fontSize: fontSize - 1)),
        ],
      ),
    );
  }
}

class _ProfileTab extends StatelessWidget {
  _ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = context.watch<FontLogic>().size;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAvatar(),
            SizedBox(height: 32),
            _buildSectionTitle('FAVORITES', fontSize),
            SizedBox(height: 16),
            _buildMovieRow([
              'https://m.media-amazon.com/images/M/MV5BMzUzNDM2NzM2MV5BMl5BanBnXkFtZTgwNTM3NTg4OTE@._V1_FMjpg_UX1000_.jpg',
              'https://s3.amazonaws.com/nightjarprod/content/uploads/sites/130/2021/07/31010254/BzVjmm8l23rPsijLiNLUzuQtyd-scaled.jpg',
              'https://m.media-amazon.com/images/M/MV5BYzdjMDAxZGItMjI2My00ODA1LTlkNzItOWFjMDU5ZDJlYWY3XkEyXkFqcGc@._V1_.jpg',
              'https://upload.wikimedia.org/wikipedia/en/1/11/Aftersun.jpg',
            ]),
            SizedBox(height: 32),
            _buildSectionTitle('RECENT ACTIVITY', fontSize),
            SizedBox(height: 16),
            _buildMovieRow([
              'https://m.media-amazon.com/images/M/MV5BOWRiOThkM2YtYzI4NS00OWViLTk0ODMtMjNlNDYyZWQ3MzNjXkEyXkFqcGc@._V1_.jpg',
              'https://m.media-amazon.com/images/M/MV5BNzdhZmY2OTQtYWI4OC00ZThkLTlhZjAtNzE2YzRjM2Q5YjJlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
              'https://m.media-amazon.com/images/M/MV5BNTJmODQzYmItNTZlMy00Mjg0LTk1NjctYjM4ZGI0NTM3ZTVjXkEyXkFqcGc@._V1_.jpg',
              'https://m.media-amazon.com/images/M/MV5BMDE1N2EzMjAtMDY1My00YWE5LWEyYjYtYmE3YjZjNzQwNDhmXkEyXkFqcGc@._V1_.jpg',
            ]),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'More activity',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: fontSize,
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(height: 32),
            _buildRatingRow(),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage('https://i.imgur.com/BoN9kdC.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, double fontSize) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize - 5,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.2,
      ),
    );
  }

  Widget _buildMovieRow(List<String> urls) {
    return SizedBox(
      height: 120,
      child: Row(
        children: urls
            .map((url) => Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 8),
            child: _MovieCard(imageUrl: url),
          ),
        ))
            .toList(),
      ),
    );
  }

  Widget _buildRatingRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.star, color: Colors.green, size: 16),
            SizedBox(width: 8),
            ...List.generate(
              5,
                  (index) => Container(
                width: 16,
                height: 16,
                margin: EdgeInsets.only(right: 4),
                decoration: BoxDecoration(
                  color: index < 3 ? Colors.grey[600] : Colors.grey[800],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: List.generate(
            5,
                (index) => Icon(Icons.star, color: Colors.green, size: 16),
          ),
        ),
      ],
    );
  }
}

class _MovieCard extends StatelessWidget {
  final String imageUrl;

  _MovieCard({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
