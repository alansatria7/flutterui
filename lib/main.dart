import 'package:flutter/material.dart';
import 'package:flutter_application_1/chattile.dart';
import 'package:flutter_application_1/storybtn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Whatsapp(),
    );
  }
}

class Whatsapp extends StatefulWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  State<Whatsapp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Whatsapp> {
  Color mainColor = const Color.fromARGB(255, 4, 16, 241);
  var containerRadius = Radius.circular(30.0);
  List<String> imageUrl = [
    "https://randomuser.me/api/portraits/lego/0.jpg",
    "https://randomuser.me/api/portraits/lego/5.jpg",
    "https://randomuser.me/api/portraits/lego/8.jpg",
    "https://randomuser.me/api/portraits/lego/1.jpg",
    "https://randomuser.me/api/portraits/lego/6.jpg",
    "https://randomuser.me/api/portraits/lego/2.jpg",
    "https://randomuser.me/api/portraits/lego/7.jpg",
    "https://randomuser.me/api/portraits/lego/5.jpg",
    "https://randomuser.me/api/portraits/lego/6.jpg"
  ];

  // ignore: prefer_typing_uninitialized_variables

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("WhatsApp"),
        backgroundColor: mainColor,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Column(
        children: [
          //First let's create the Story time line container
          SizedBox(
            height: 100.0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  //Let's create a custom widget for our story button
                  storyButton(imageUrl[0], "David disini"),
                  storyButton(imageUrl[1], "Jack"),
                  storyButton(imageUrl[2], "Anji"),
                  storyButton(imageUrl[3], "Josep"),
                  storyButton(imageUrl[4], "Jono"),
                  storyButton(imageUrl[5], "Kejo"),
                  storyButton(imageUrl[6], "Jul"),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: containerRadius, topRight: containerRadius),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                child: ListView(
                  children: [
                    //Now let's create our chat tile custom widget
                    chatTile(
                        imageUrl[0], "PresidentEpil", "YNTKTS", "23.44", false),
                    chatTile(imageUrl[1], "udin", "mbuh", "23.33", true),
                    chatTile(imageUrl[2], "Keplin", "dolan", "23.32", true),
                    chatTile(imageUrl[3], "Jarwo", "py kabare", "21.22", false),
                    chatTile(imageUrl[5], "Sopo", "halo", "12.21", false),
                    chatTile(imageUrl[4], "Adit", "ngelu", "09.33", true),
                    chatTile(imageUrl[6], "Ali", "msg", "06.22", true),
                    chatTile(imageUrl[7], "Alya", "g", "06.19", true),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
