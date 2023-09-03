import 'package:flutter/material.dart';
import 'package:ui_libraray_apps/resources/color_apps.dart';
import 'package:ui_libraray_apps/screen/home_screen/home_screen.dart';
import 'package:ui_libraray_apps/widgets/book_rating.dart';
import 'package:ui_libraray_apps/widgets/bound_button.dart';
import '../../gen/assets.gen.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //padding: const EdgeInsets.all(15.0),
              width: double.infinity,
              height: _size.height * .54,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.images.bg.path),
                  fit: BoxFit.fitWidth,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: _size.height * .05),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    SizedBox(height: 2),
                    _builedSectionOne(context),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _size.height * .01, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ChapterCard(
                    size: _size,
                    title: "Chapter 1:Money\n",
                    title1: "Life  is About Chnage",
                    iconData: Icons.arrow_forward_ios,
                    prss: () {},
                  ),
                  const SizedBox(height: 6),
                  ChapterCard(
                    size: _size,
                    title: "Chapter 1:Money\n",
                    title1: "Life  is About Chnage",
                    iconData: Icons.arrow_forward_ios,
                    prss: () {},
                  ),
                  const SizedBox(height: 6),
                  ChapterCard(
                    size: _size,
                    title: "Chapter 1:Money\n",
                    title1: "Life  is About Chnage",
                    iconData: Icons.arrow_forward_ios,
                    prss: () {},
                  ),
                  const SizedBox(height: 6),
                  ChapterCard(
                    size: _size,
                    title: "Chapter 1:Money\n",
                    title1: "Life  is About Chnage",
                    iconData: Icons.arrow_forward_ios,
                    prss: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "You might also ",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(fontSizeDelta: 1),
                      ),
                      TextSpan(
                        text: "Like.....",
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                              fontSizeDelta: 4,
                            ),
                      ),
                    ]),
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      Container(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 20,
                            right: 30,
                          ),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Crshing ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .apply(
                                              fontSizeDelta: 8,
                                            ),
                                      ),
                                      TextSpan(
                                        text: 'Influencer',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .apply(
                                              fontSizeDelta: 4,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  BookRating(),
                                  const SizedBox(width: 20),
                                  const RoundButton(
                                    text: "Read",
                                    fontSize: 15,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          Assets.images.book3.path,
                          height: 100,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _builedSectionOne(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Crshing &',
                style: Theme.of(context).textTheme.bodyLarge!.apply(
                      fontSizeDelta: 20,
                    ),
              ),
              Text(
                'Influencer',
                style: Theme.of(context).textTheme.bodyLarge!.apply(
                      fontSizeDelta: 10,
                    ),
              ),
              Text(
                "The Earth is our only planet in the universe, it is a source of life and beauty, and it is up to humans to preserve it to ensure the continuity of life on it.",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "The Earth is our only planet in the universe, it is a source of life and beauty, and it is up to humans to preserve it to ensure the continuity of life on it.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 5),
                        const RoundButton(text: "Read"),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border,
                        ),
                      ),
                      BookRating(),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          Assets.images.book2.path,
        ),
      ],
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String title;
  final String title1;
  final IconData iconData;
  final Function()? prss;
  const ChapterCard({
    super.key,
    required Size size,
    required this.title,
    required this.title1,
    required this.iconData,
    this.prss,
  }) : _size = size;

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _size.width - 40,
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      decoration: BoxDecoration(
        color: Colors.teal.withOpacity(0.7),
        borderRadius: BorderRadius.circular(37),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: title,
                  style: Theme.of(context).textTheme.bodySmall!.apply(
                        color: Colors.black,
                      ),
                ),
                TextSpan(
                  text: title1,
                  style: Theme.of(context).textTheme.bodySmall!.apply(
                        color: kLightBlackColor,
                      ),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(onPressed: prss, icon: Icon(iconData))
        ],
      ),
    );
  }
}
