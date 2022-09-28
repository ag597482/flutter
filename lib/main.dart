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
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [getContainer(), getContainer()],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [getContainer(), getContainer()],
                )
              ],
            ),
          )),
    );
  }
}

Container getContainer() {
  return Container(
    alignment: Alignment.topLeft,
    height: 100,
    width: 100,
    margin: EdgeInsets.all(20),
    decoration: BoxDecoration(
        border: Border.all(width: 4, color: Colors.black),
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(20)),
  );
}
