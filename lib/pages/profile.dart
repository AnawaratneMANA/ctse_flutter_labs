import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: const Text("My App")),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // To center we have to add SizeBox, Infinity.
              SizedBox(
                width: double.infinity,
              ),

              // Adding Image.
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/images/profile.png",
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),

              // Spacing between Image and and Text.
              SizedBox(height: 8),

              // Normal Text.
              Text("Nirmith Akash",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),

              // SizeBox to add space between elements.
              SizedBox(height: 8),
              // Styled Text.
              Text("Title",
                  style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    color: Colors.teal,
                  )),
              Row(
                children: const <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Icon(
                    Icons.audiotrack,
                    color: Colors.green,
                    size: 30.0,
                  ),
                ],
              ),
            ]));
  }
}
