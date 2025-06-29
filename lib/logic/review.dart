class Review {
  final String title;
  final String poster;
  final String reviewer;
  final String avatar;
  final double rating;
  final String text;

  Review({
    required this.title,
    required this.poster,
    required this.reviewer,
    required this.avatar,
    required this.rating,
    required this.text,
  });

  factory Review.fromMap(Map<String, dynamic> map) {
    return Review(
      title: map['title'],
      poster: map['poster'],
      reviewer: map['reviewer'],
      avatar: map['avatar'],
      rating: (map['rating'] as num).toDouble(),
      text: map['text'],
    );
  }
}



final List<Review> reviews = [
  Review(
    title: "28 Years Later",
    poster: "https://theartsshelf.com/wp-content/uploads/2025/05/28-Years-Later-New-Poster.jpg",
    reviewer: "Harry",
    avatar: "https://randomuser.me/api/portraits/men/1.jpg",
    rating: 4,
    text: "28 Inches Later",
  ),
  Review(
    title: "KPop Demon Hunters",
    poster: "https://m.media-amazon.com/images/M/MV5BNTBiYWJlMjQtOTIyMy00NTY4LWFhOWItOWZhNzc3NGMyMjc2XkEyXkFqcGc@._V1_.jpg",
    reviewer: "Prilosec",
    avatar: "https://randomuser.me/api/portraits/men/3.jpg",
    rating: 3,
    text: "Nepo baby vs industry plant",
  ),
  Review(
    title: "KPop Demon Hunters",
    poster: "https://m.media-amazon.com/images/M/MV5BNTBiYWJlMjQtOTIyMy00NTY4LWFhOWItOWZhNzc3NGMyMjc2XkEyXkFqcGc@._V1_.jpg",
    reviewer: "mirl",
    avatar: "https://randomuser.me/api/portraits/women/44.jpg",
    rating: 4.5,
    text: "the tiger is a child of divorce",
  ),
  Review(
    title: "28 Years Later",
    poster: "https://theartsshelf.com/wp-content/uploads/2025/05/28-Years-Later-New-Poster.jpg",
    reviewer: "Lenny",
    avatar: "https://randomuser.me/api/portraits/men/2.jpg",
    rating: 4.5,
    text: "Ralph Fiennes is so damn orange in this film, I thought he was the fucking Lorax.",
  ),
];
