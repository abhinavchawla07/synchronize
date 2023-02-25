import 'package:flutter/material.dart';
import 'package:synchronize/constants.dart' as app_constants;
import 'package:synchronize/pages/about/constants.dart';

class AboutPage extends StatelessWidget {
  static String pageRoute = "/about";

  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("About"),

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                  backgroundColor: app_constants.Colors.TURQUOISE,
                  radius: 80,
                  backgroundImage: AssetImage(
                    "images/AboutIcon.png",
                  )),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Divider(
                  thickness: 5,
                  color: app_constants.Colors.DEEP_BLUE,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30),
                child: Text(
                  ABOUT_TEXT,
                  style: TextStyle(
                    fontSize: 20,
                    color: app_constants.Colors.DEEP_BLUE,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
