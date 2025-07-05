import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}
class _SearchScreenState extends State<SearchScreen> {
  Widget build(BuildContext context) {
    final browseByItems = [
      'Release date',
      'Genre, country or language',
      'Service',
      'Most popular',
      'Highest rated',
      'Most anticipated',
      'Top 250 narrative features',
      'Featured lists',
    ];

    final letterboxdItems = [
      'Journal',
      'Podcast',
      'Showdown',
      'Year in Review',
      'About',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: 'Find films, cast + crew, members, reviews...',
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              prefixIcon: Icon(Icons.search),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          SizedBox(height: 24),
          Text(
            'Browse by',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          ...browseByItems.map((item) => ListTile(
                title: Text(item),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {}, // Add navigation logic here
              )),
          SizedBox(height: 24),
          Text(
            'Letterboxd.com',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          ...letterboxdItems.map((item) => ListTile(
                title: Text(item),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {}, // Add navigation logic here
              )),
          SizedBox(height: 16),
        ],
      ),
    );
  }

  
}
