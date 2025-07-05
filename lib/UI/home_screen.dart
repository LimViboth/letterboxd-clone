import 'package:flutter/material.dart';
import '../logic/photo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(10, 15, 10, 3),
          child: Text(
            "Popular this week",
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.textTheme.bodyMedium?.color,
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,
              childAspectRatio: 2 / 3,
            ),
            itemCount: movieList.length,
            itemBuilder: (context, index) {
              final item = movieList[index];
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(item, fit: BoxFit.cover),
              );
            },
          ),
        ),
      ],
    );
  }
}
