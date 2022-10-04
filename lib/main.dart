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
              title: Text("Stack"),
              leading: Icon(
                Icons.book,
                color: Colors.grey,
              ),
            ),
            body: Center(
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.passthrough,
                clipBehavior: Clip.hardEdge,
                children: [
                  getContainer(Colors.yellow, 200, 200, Container()),
                  getContainer(
                      Colors.orange,
                      300,
                      100,
                      Center(
                        child: Text(
                          "hello !!!",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w700),
                        ),
                      )),
                  Positioned(
                      top: 10,
                      left: 50,
                      child: getContainer(Colors.pink, 20, 20, Text("hi"))),
                  Positioned(
                      top: 10,
                      right: 50,
                      child: getContainer(Colors.pink, 20, 20, Text("hi")))
                ],
              ),
            )));
  }
}

Container getContainer(Color color, double h, double w, Widget widget) {
  return Container(
    height: h,
    width: w,
    color: color,
    child: widget,
  );
}
