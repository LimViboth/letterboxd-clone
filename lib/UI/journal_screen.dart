import 'package:flutter/material.dart';

class JournalScreen extends StatefulWidget {
  const JournalScreen({super.key});

  @override
  State<JournalScreen> createState() => _JournalScreenState();
}

class _JournalScreenState extends State<JournalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181B20),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildEntryCard(
            image:
            "https://sm.ign.com/ign_ap/feature/e/every-majo/every-major-fast-and-furious-character-and-cast-member_bcam.jpg",
            title: "Fembots Forever",
            subtitle:
            "A starter pack of twenty female robots on film that show the future.",
          ),
          SizedBox(height: 16),
          _buildEntryCard(
            image:
            "https://sm.ign.com/ign_ap/feature/e/every-majo/every-major-fast-and-furious-character-and-cast-member_bcam.jpg",
            title: "Fast & Furious Franchise",
            subtitle:
            "Yorgos Lanthimos speaks with us about Dogtooth for its fifteenth anniversary 4K re-release.",
          ),
          SizedBox(height: 16),
          _buildEntryCard(
            image:
            "https://sm.ign.com/ign_ap/feature/e/every-majo/every-major-fast-and-furious-character-and-cast-member_bcam.jpg",
            title: "Fast & Furious Franchise",
            subtitle:
            "Yorgos Lanthimos speaks with us about Dogtooth for its fifteenth anniversary 4K re-release.",
          ),
          SizedBox(height: 16),
          _buildEntryCard(
            image:
            "https://sm.ign.com/ign_ap/feature/e/every-majo/every-major-fast-and-furious-character-and-cast-member_bcam.jpg",
            title: "Fast & Furious Franchise",
            subtitle:
            "Yorgos Lanthimos speaks with us about Dogtooth for its fifteenth anniversary 4K re-release.",
          ),
        ],
      ),
    );
  }

  Widget _buildEntryCard({
    required String image,
    required String title,
    required String subtitle,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        color: Color(0xFF181B20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              image,
              width: double.infinity,
              height: 180,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 13,
                    ),
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
