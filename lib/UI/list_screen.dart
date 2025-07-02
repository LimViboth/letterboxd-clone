import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181B20),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildListSection(
            header: "Popular this week",
            title: "Official Top 250 Narrative Feature Films",
            username: "dave",
            avatarUrl: "https://randomuser.me/api/portraits/men/1.jpg",
            description:
            "Letterboxd's Top 250 movies, based on the average weighted rating of all users. Only feature length narrative films included.",
            posters: [
              "https://m.media-amazon.com/images/I/51NiGlapXlL._AC_.jpg",
              "https://m.media-amazon.com/images/I/71c05lTE03L._AC_SL1181_.jpg",
              "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_FMjpg_UX1000_.jpg",
              "https://m.media-amazon.com/images/M/MV5BYzdjMDAxZGItMjI2My00ODA1LTlkNzItOWFjMDU5ZDJlYWY3XkEyXkFqcGc@._V1_.jpg",
              "https://m.media-amazon.com/images/M/MV5BOWRiOThkM2YtYzI4NS00OWViLTk0ODMtMjNlNDYyZWQ3MzNjXkEyXkFqcGc@._V1_.jpg"
            ],
          ),
          SizedBox(height: 24),
          _buildListSection(
            header: "for when you want to feel something",
            title: "emotional & meaningful cinema",
            username: "Azure",
            avatarUrl: "https://randomuser.me/api/portraits/women/44.jpg",
            description:
            "A list of movies that made me reflect and feel deeply. Ranges from emotional rollercoasters to psychological reflections on society.",
            posters: [
              "https://wl-brightside.cf.tsp.li/resize/728x/png/99d/200/c6548155a2a79c9a0830fc9a9c.png",
              "https://m.media-amazon.com/images/I/71niXI3lxlL._AC_SL1024_.jpg",
              "https://m.media-amazon.com/images/I/71c05lTE03L._AC_SL1181_.jpg",
              "https://m.media-amazon.com/images/M/MV5BNDYwNzVjMTItZmU5YS00YjQ5LTljYjgtMjY2NDVmYWMyNWFmXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
              "https://s3.amazonaws.com/nightjarprod/content/uploads/sites/130/2021/07/31010254/BzVjmm8l23rPsijLiNLUzuQtyd-scaled.jpg",

            ],
          ),
          SizedBox(height: 24),
          _buildListSection(
            header: "Movies everyone should watch at",
            title: "least once during their lifetime",
            username: "fcbarcelona",
            avatarUrl: "https://static.wikia.nocookie.net/party-animals/images/4/4f/UnderbiteAvatar.png/revision/latest?cb=20230127124347",
            description:
            "I asked reddit what one movie everyone should watch at least one in their lifetime to create a list of movies that everyone should watch.",
            posters: [
              "https://upload.wikimedia.org/wikipedia/commons/7/76/Psycho_%281960%29_theatrical_poster_%28retouched%29.jpg",
              "https://m.media-amazon.com/images/M/MV5BOTE4MTUzNzMtOTBlZC00YTQ2LWFiNTEtY2Q0MTNlNzdhMzgzXkEyXkFqcGc@._V1_.jpg",
              "https://m.media-amazon.com/images/M/MV5BNjM1ZDQxYWUtMzQyZS00MTE1LWJmZGYtNGUyNTdlYjM3ZmVmXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
              "https://m.media-amazon.com/images/M/MV5BN2E5NzI2ZGMtY2VjNi00YTRjLWI1MDUtZGY5OWU1MWJjZjRjXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
              "https://upload.wikimedia.org/wikipedia/en/d/d2/Back_to_the_Future.jpg",

            ],
          ),
        ],
      ),
    );
  }

  Widget _buildListSection({
    required String header,
    required String title,
    required String avatarUrl,
    required String username,
    required String description,
    required List<String> posters,
  })
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            Row(
              children: [
                Text(
                  username,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(avatarUrl),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 110,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: posters.length,
            separatorBuilder: (_, __) => SizedBox(width: 8),
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(posters[index], width: 80, fit: BoxFit.cover),
              );
            },
          ),
        ),
        SizedBox(height: 8),
        Text(
          description,
          style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
        ),
      ],
    );
  }
}
