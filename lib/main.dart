import 'package:flutter/material.dart';

var appTheme = Color.fromARGB(255, 53, 152, 124);

String local_image = "assets/refund.jpeg";
String fb_image =
    "https://scontent-sin6-4.xx.fbcdn.net/v/t39.30808-6/269587835_4730930460361411_7291457782084260876_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=e3f864&_nc_ohc=B94C0fm8V0gAX9V9kyV&_nc_ht=scontent-sin6-4.xx&oh=00_AT91s_s1-kePyTpzUQNP9xXxEP4t_x-JMEk4fcVu5z0_vA&oe=6341A2E2";

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "first",
        home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Image"),
            leading: Icon(
              Icons.book,
              color: Colors.grey,
            ),
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  child: Image.asset(local_image),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  height: 100,
                  width: 200,
                  child: Image.network(fb_image),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  child: FadeInImage.assetNetwork(
                    placeholder: local_image,
                    image: fb_image,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
