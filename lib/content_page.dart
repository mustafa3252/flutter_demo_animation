import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage>
    with SingleTickerProviderStateMixin {
  // late AnimationController controller;
  // late Animation animation;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   controller = AnimationController(
  //       duration: const Duration(milliseconds: 500), vsync: this);
  //   animation =
  //       ColorTween(begin: Colors.white, end: Colors.red).animate(controller);
  //   controller.forward();
  //   animation.addStatusListener((status) {
  //     if (status == AnimationStatus.completed) {
  //       controller.reverse(from: 500);
  //     } else if (status == AnimationStatus.dismissed) {
  //       controller.forward();
  //       controller.addListener(() {
  //         setState(() {});
  //       });
  //     }
  //   });
  //   super.initState();
  // }
  //
  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //animation.value,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "I Love Flutter",
              style: TextStyle(
                  color: Color(0xff212121),
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  fontFamily: "VarelaRound"),
            ),
            const SizedBox(
              height: 60,
            ),
            const Hero(
              tag: "heart",
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 350,
              ),
            ),
            const SizedBox(
              height: 60,
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
                Navigator.pop(context);
              },
              child: const Text(
                "Take Me Back",
                style: TextStyle(fontSize: 18, color: Color(0xffF5F5F5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
