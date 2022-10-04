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
          body: Forms(),
        ));
  }
}

class Forms extends StatefulWidget {
  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final keys = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: keys,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter your Name",
                  labelText: "Name",
                  icon: Icon(Icons.person)),
              validator: ((value) => validate(value)),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter password",
                  labelText: "Password",
                  icon: Icon(Icons.lock)),
              validator: ((value) => validate(value)),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter github link",
                  labelText: "Github Link",
                  icon: Icon(Icons.person)),
              validator: ((value) => validate(value)),
              autocorrect: true,
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    if (keys.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("validating text")));
                    }
                  },
                  child: Text("Submit")),
            )
          ],
        ));
  }
}

String? validate(value) {
  if (value == null || value.isEmpty) {
    return "Please fill details";
  }
  return null;
}
