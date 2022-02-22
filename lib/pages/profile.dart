import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [

            // To center we have to add SizeBox, Infinity.
            SizedBox(
              width: double.infinity,
            ),

            // Normal Text.
            Text("Nirmith Akash"),

            // Styled Text.
            Text(
                "Title",
                style: TextStyle(
                    fontSize: 10,
                    fontStyle: FontStyle.italic,
                    color: Colors.teal
                )
            ),
          ],
        ));
  }
}
