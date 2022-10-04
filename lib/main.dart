import 'package:flutter/material.dart';

var appTheme = Color.fromARGB(255, 53, 152, 124);

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
            title: Text("Form"),
            leading: Icon(
              Icons.book,
              color: Colors.grey,
            ),
          ),
          body: Icon(
            Icons.delete,
            color: Colors.black,
            size: 40,
            textDirection: TextDirection.ltr,
          ),
        ));
  }
}
