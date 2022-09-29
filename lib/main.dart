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
              title: Text("Portfolio"),
              leading: Icon(
                Icons.book,
                color: Colors.grey,
              ),
            ),
            body: Column(
              children: [
                getLogo("A"),
                getContainer(
                    getTextField(
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        "Aman Gupta"),
                    20.0),
                getContainer(
                    getTextField(
                        Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        "Password"),
                    20.0),
                getContainer(
                    getTextField(
                        Icon(
                          Icons.link,
                          color: Colors.white,
                        ),
                        "Github"),
                    20.0),
                getContainer(getText("Update"), 0.0)
              ],
            )));
  }
}

Center getLogo(String l) {
  return Center(
    child: Container(
        margin: EdgeInsets.only(top: 40, bottom: 10),
        alignment: Alignment.center,
        width: 100,
        height: 100,
        child: Text(l,
            style: TextStyle(
              color: Colors.white,
              fontSize: 80,
              fontWeight: FontWeight.w500,
            )),
        decoration: BoxDecoration(
            border: Border.all(width: 4, color: Colors.white),
            color: appTheme,
            borderRadius: BorderRadius.circular(50))),
  );
}

Container getContainer(Widget widget, double leftPadding) {
  return Container(
    margin: EdgeInsets.only(left: 30, top: 30, right: 30),
    alignment: Alignment.center,
    height: 50,
    child: Padding(
      padding: EdgeInsets.only(left: leftPadding),
      child: widget,
    ),
    decoration:
        BoxDecoration(color: appTheme, borderRadius: BorderRadius.circular(20)),
  );
}

TextField getTextField(Icon i, String text) {
  return TextField(
    decoration:
        InputDecoration(border: InputBorder.none, hintText: text, icon: i),
  );
}

Text getText(String s) {
  return Text(s,
      style: TextStyle(
          fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700));
}
