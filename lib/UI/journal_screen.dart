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
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildEntryCard(
            image:
            "https://cosmicbook.news/wp-content/uploads/2025/02/megan-2-0-trailer-poster.webp",
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
            "https://www.lifewire.com/thmb/fmEVa8HLdfsO-GqEAxXLpqCMIiE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/httyd-27e5b3b8faf64cca9650554bf0261d91.jpg",
            title: "How to train your dragon trilogy",
            subtitle:
            "Ranking the trilogy from worst to best",
          ),
          SizedBox(height: 16),
          _buildEntryCard(
            image:
            "https://static.wikia.nocookie.net/lotr/images/8/87/Ringstrilogyposter.jpg/revision/latest?cb=20210720095933",
            title: "Lord of the ring",
            subtitle:
            "The lord of the ring trilogy is looking to coming back on the big screen once again",
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
