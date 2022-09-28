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
                  children: [getContainer("t left"), getContainer("t right")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [getContainer("b left"), getContainer("b right")],
                )
              ],
            ),
          )),
    );
  }
}

Container getContainer(var v) {
  return Container(
    alignment: Alignment.center,
    height: 100,
    width: 100,
    margin: EdgeInsets.all(20),
    child: Text(v),
    decoration: BoxDecoration(
        border: Border.all(width: 4, color: Colors.black),
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(50)),
  );
}
