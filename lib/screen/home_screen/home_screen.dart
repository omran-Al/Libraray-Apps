import 'package:flutter/material.dart';
import 'package:ui_libraray_apps/models/card_model.dart';
import 'package:ui_libraray_apps/resources/color_apps.dart';
import 'package:ui_libraray_apps/screen/detalis_screem/details_screen.dart';
import 'package:ui_libraray_apps/widgets/book_rating.dart';
import 'package:ui_libraray_apps/widgets/two_silde_round_button.dart';

import '../../gen/assets.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        // padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.images.mainPageBg.path),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * .1),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TitleApps(
                  title: "What are you\nreading ",
                  title1: "today?",
                ),
              ),
              const SizedBox(height: 20),
              _builedListBooks(),
              const SizedBox(height: 20),
              _builedBestDay(context),
              const Padding(
                padding: EdgeInsets.only(left: 28),
                child: TitleApps(title: "Continue Reading"),
              ),
              _buildeContinueReading(context),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildeContinueReading(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            BookCard.bookCard[0].title,
                          ),
                          Text(
                            BookCard.bookCard[0].subTitle,
                          ),
                          const Align(
                              alignment: Alignment.bottomRight,
                              child: Text('Chapter 7 of 10')),
                        ],
                      ),
                    ),
                    Image.asset(
                      BookCard.bookCard[0].imageUrl,
                      width: 75,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 7,
              width: MediaQuery.of(context).size.width * .6,
              decoration: BoxDecoration(
                color: kProgressIndicator,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _builedBestDay(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TitleApps(
                title: "Best of The",
              ),
              SizedBox(width: 5),
              TitleApps(title1: "day"),
            ],
          ),
          Container(
            height: 250,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.45),
                  ),
                  padding: EdgeInsets.only(
                      left: 20,
                      top: 10,
                      right: MediaQuery.of(context).size.width * .35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcom In The New Yourk",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Apps Book Library",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: kBlackColor, fontSizeDelta: 10),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Read More Book",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          BookRating(),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "The Earth is our only planet in the universe, it is a source of life and beauty, and it is up to humans to preserve it to ensure the continuity of life on it.",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Image.asset(BookCard.bookCard[0].imageUrl),
                  width: MediaQuery.of(context).size.width * 0.36,
                ),
                SizedBox(height: 10),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: SizedBox(
                      height: 39,
                      width: MediaQuery.of(context).size.width * .30,
                      child: TwoSideButton(
                        text: "Read",
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SingleChildScrollView _builedListBooks() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 240,
        child: Row(
          children: [
            ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: BookCard.bookCard.length,
              itemBuilder: (context, index) {
                return ReadListCard(
                  imageUrl: BookCard.bookCard[index].imageUrl,
                  press: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DetailsScreen()));
                  },
                  title: BookCard.bookCard[index].title,
                  subtitle: BookCard.bookCard[index].subTitle,
                  rating: BookCard.bookCard[index].rating,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ReadListCard extends StatelessWidget {
  final String imageUrl;
  final Function()? press;
  final String title;
  final String subtitle;
  final String rating;

  const ReadListCard({
    super.key,
    required this.imageUrl,
    required this.press,
    required this.title,
    required this.subtitle,
    this.rating = "4.9",
  });

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 25),
      width: _size.width * 0.56,
      height: 400,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 210,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 20,
                    color: kShadowColor,
                  )
                ],
              ),
            ),
          ),
          Image.asset(
            imageUrl,
            width: 130,
          ),
          Positioned(
            top: 30,
            right: 20,
            child: Column(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: press,
                ),
                BookRating(
                  rating: rating,
                ),
              ],
            ),
          ),
          Positioned(
            top: 140,
            child: Container(
              height: 100,
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: RichText(
                      text: TextSpan(
                          style: const TextStyle(color: kBlackColor),
                          children: [
                            TextSpan(
                                text: "$title\n",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: subtitle,
                                style: const TextStyle(
                                  color: kLightBlackColor,
                                )),
                          ]),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: press,
                        child: Container(
                          width: 90,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: const Text("Details"),
                        ),
                      ),
                      Expanded(
                        child: TwoSideButton(
                          press: press,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleApps extends StatelessWidget {
  final String title;
  final String title1;
  const TitleApps({
    super.key,
    this.title = "",
    this.title1 = "",
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      style: Theme.of(context).textTheme.titleLarge,
      children: [
        TextSpan(text: title),
        TextSpan(
          text: title1,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ],
    ));
  }
}
