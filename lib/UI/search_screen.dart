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
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Search'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: 'Find films, cast + crew, members, reviews...',
              filled: true,
              fillColor: Colors.grey[900],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              prefixIcon: const Icon(Icons.search, color: Colors.white54),
              hintStyle: const TextStyle(color: Colors.white54),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 24),
          const Text(
            'Browse by',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ...browseByItems.map((item) => ListTile(
                title: Text(item, style: const TextStyle(color: Colors.white)),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white70),
                onTap: () {}, // Add navigation logic here
              )),
          const SizedBox(height: 24),
          const Text(
            'Letterboxd.com',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ...letterboxdItems.map((item) => ListTile(
                title: Text(item, style: const TextStyle(color: Colors.white)),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white70),
                onTap: () {}, // Add navigation logic here
              )),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  
}
