import '../gen/assets.gen.dart';

class BookCard {
  final String title;
  final String subTitle;
  final String imageUrl;
  final String rating;

  BookCard({
    required this.title,
    required this.subTitle,
    required this.imageUrl,
    required this.rating,
  });

  static List<BookCard> bookCard = [
    BookCard(
      imageUrl: Assets.images.book2.path,
      title: "Crushing & Influence",
      subTitle: "Gary Venchuk",
      rating: "4.9",
    ),
    BookCard(
      imageUrl: Assets.images.book1.path,
      title: "Top Ten Business Hacks",
      subTitle: "Herman Joel",
      rating: "4.8",
    ),
    BookCard(
      imageUrl: Assets.images.book3.path,
      title: "Crushing & Influence",
      subTitle: "Gary Venchuk",
      rating: "4.4",
    ),
  ];
}
