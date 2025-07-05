import 'package:flutter/material.dart';
class AddScreen extends StatefulWidget {
  const AddScreen({super.key});
  @override
 State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  List<String> films = [
    'Mulan',
    'Justice league',
    'Before sunrise',
    'It end with us',
    'Kungfu',
    'Des',
    'Minion',
    'Inside',
    'Dead',
    'Planet of',
    'Alien',
    'The wild',
    'God',
    'Saltburn',
    'Dune 2',
    'La la',
    'How to',
  ];
  List<String> filteredFilms = [];

  @override
  void initState() {
    super.initState();
    filteredFilms = films;
  }

  void _filterFilms(String query) {
    setState(() {
      filteredFilms = films
          .where((film) => film.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      'Cancel',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Text(
                    'Add a Film',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                    )
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage('assets/patrick.png'), 
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                onChanged: _filterFilms,
                decoration: InputDecoration(
                  hintText: 'Name of film',
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: filteredFilms.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      filteredFilms[index],
                    ),
                    onTap: () {
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}