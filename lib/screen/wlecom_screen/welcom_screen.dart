import 'package:flutter/material.dart';
import 'package:ui_libraray_apps/resources/router_manager.dart';

import '../../gen/assets.gen.dart';
import '../../widgets/bound_button.dart';

class WelcomScreen extends StatefulWidget {
  const WelcomScreen({super.key});

  @override
  State<WelcomScreen> createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.bitmap.path),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headlineLarge,
                children: const [
                  TextSpan(
                    text: "flamin",
                  ),
                  TextSpan(
                      text: "go.",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ),
            RoundButton(
              text: "Start Reading",
              fontSize: 20,
              prss: () {
                setState(() {
                  Navigator.pushNamed(context, Screens.homeScreen);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
