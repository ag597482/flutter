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
            body: Column(
              children: [getText("hello"), getRichText(), getTextField()],
            )));
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

Text getText(String s) {
  return Text("Hello Coder's",
      style: TextStyle(
          color: Colors.pink,
          fontSize: 30,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500,
          backgroundColor: Colors.amberAccent,
          letterSpacing: 4.0,
          wordSpacing: 5.0,
          shadows: [
            Shadow(color: Colors.black, offset: Offset(3.0, 3.0)),
            Shadow(color: Colors.blue, offset: Offset(4.0, 4.0))
          ]));
}

RichText getRichText() {
  return RichText(
    text: TextSpan(
        text: "hello",
        style: TextStyle(
            color: Colors.pink,
            fontSize: 30,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            backgroundColor: Colors.amberAccent,
            letterSpacing: 4.0,
            wordSpacing: 5.0,
            shadows: [
              Shadow(color: Colors.black, offset: Offset(3.0, 3.0)),
              Shadow(color: Colors.blue, offset: Offset(4.0, 4.0))
            ]),
        children: [
          TextSpan(
              text: "aman",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  backgroundColor: Colors.amberAccent,
                  letterSpacing: 4.0,
                  wordSpacing: 5.0,
                  shadows: [
                    Shadow(color: Colors.black, offset: Offset(3.0, 3.0)),
                    Shadow(color: Colors.blue, offset: Offset(4.0, 4.0))
                  ]))
        ]),
  );
}

TextField getTextField() {
  return TextField(
    //cursorWidth: 2,
    decoration: InputDecoration(
        hoverColor: Colors.black,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        labelText: "Name",
        hintText: "Enter you name"),
  );
}
