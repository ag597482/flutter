import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: AlertWidgit());
  }
}

class AlertWidgit extends StatelessWidget {
  TextEditingController _textEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            child: Text("Basic Alert Dialog"),
            onPressed: () {
              alertDialogWidgit(context);
            },
          ),
          ElevatedButton(
            child: Text("Text Field Alert Dialog"),
            onPressed: () {
              textFieldAlertDialogWidgit(context, _textEditingController);
            },
          ),
          ElevatedButton(
            child: Text("Confirmation Alert Dialog"),
            onPressed: () async {
              final acitons? actionTaken =
                  await confirmationAlertDialogWidgit(context);
              log("action taken  is  $actionTaken ");
              print("User selected $actionTaken");
            },
          ),
          ElevatedButton(
            child: Text("Select Opton Alert Dialog"),
            onPressed: () async {
              final lang? actionTaken = await selectOptionDialogWidgit(context);
              log("action taken  is  $actionTaken ");
              print("User selected $actionTaken");
            },
          )
        ]),
      ),
    );
  }
}

alertDialogWidgit(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Basics"),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("ok"))
          ],
        );
      });
}

textFieldAlertDialogWidgit(
    BuildContext context, TextEditingController textEditingController) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Basics"),
          content: TextField(
            decoration: InputDecoration(hintText: "Enter what you want"),
            controller: textEditingController,
          ),
          actions: [
            ElevatedButton(
                onPressed: () {
                  log(textEditingController.text);
                  textEditingController.text = "";
                  Navigator.of(context).pop();
                },
                child: Text("ok"))
          ],
        );
      });
}

enum acitons { accept, reject }

Future<acitons?> confirmationAlertDialogWidgit(BuildContext context) async {
  return showDialog<acitons>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confimation Action !!"),
          content: Text("Choose you action"),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(acitons.accept);
                },
                child: Text("Accept")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(acitons.reject);
                },
                child: Text("Reject"))
          ],
        );
      });
}

enum lang { c, java, python, react }

Future<lang?> selectOptionDialogWidgit(BuildContext context) async {
  return showDialog<lang>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("Choose any one"),
          children: [
            getSimpleDialog(context, "C", lang.c),
            getSimpleDialog(context, "JAVA", lang.java),
            getSimpleDialog(context, "PYTHON", lang.python),
            getSimpleDialog(context, "REACT", lang.react)
          ],
        );
      });
}

SimpleDialogOption getSimpleDialog(BuildContext context, String text, lang l) {
  return SimpleDialogOption(
    child: Text(text),
    onPressed: () {
      Navigator.pop(context, l);
    },
  );
}
