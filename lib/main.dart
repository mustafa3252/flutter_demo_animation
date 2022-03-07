import 'package:flutter/material.dart';
import 'content_page.dart';

void main() => runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "An Animation App",
    home: HomeScreen()));

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9E9E9E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "I love Flutter",
                  style: TextStyle(
                      color: Color(0xffF5F5F5),
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      fontFamily: "VarelaRound"),
                ),
                SizedBox(
                  width: 8,
                ),
                Hero(
                  tag: "heart",
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 40,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffFF4081),
                minimumSize: const Size(230, 66),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: const BorderSide(
                        width: 10,
                        color: Colors.pinkAccent,
                        style: BorderStyle.solid)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContentPage(),
                  ),
                );
              },
              child: const Text(
                "Press Me!!",
                style: TextStyle(fontSize: 18, color: Color(0xffF5F5F5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
