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
            title: Text("Card widgit"),
            leading: Icon(
              Icons.book,
              color: Colors.grey,
            ),
          ),
          body: Center(
              child: Container(
            height: 200,
            width: 300,
            child: Card(
              elevation: 10,
              color: Colors.yellow,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(children: [
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.blue,
                    size: 40,
                  ),
                  title: Text(
                    "Aman gupta",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  subtitle: Text("Coder"),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Icon(Icons.call)),
                    ElevatedButton(onPressed: () {}, child: Text("Contact"))
                  ],
                )
              ]),
            ),
          )),
        ));
  }
}
