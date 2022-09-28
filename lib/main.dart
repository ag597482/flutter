import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "first",
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 59, 255, 141),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 59, 203, 255),
            title: Text("App Bar"),
            leading: Icon(
              Icons.home,
              color: Colors.yellow,
            ),
          ),
          body: Container(
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    getContainer("t left", Colors.red),
                    getContainer("t right", Colors.yellow)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    getContainer("b left", Colors.blue),
                    getContainer("b right", Colors.green)
                  ],
                )
              ],
            ),
          )),
    );
  }
}

Container getContainer(var v, Color c) {
  return Container(
    alignment: Alignment.center,
    height: 100,
    width: 100,
    child: Text(v),
    decoration: BoxDecoration(
        border: Border.all(width: 4, color: Colors.black),
        color: c,
        borderRadius: BorderRadius.circular(50)),
  );
}
