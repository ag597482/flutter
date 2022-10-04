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
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.grey,
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text("Card widgit"),
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: "Settings",
                ),
                Tab(
                  icon: Icon(Icons.local_grocery_store),
                  text: "Store",
                )
              ]),
            ),
            drawer: ListView(
              padding: EdgeInsets.all(8.0),
              children: [
                UserAccountsDrawerHeader(
                    accountName: Text("Aman Gupta"),
                    accountEmail: Text("aman.gupta@gmail.com"),
                    currentAccountPicture: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage(local_image), fit: BoxFit.fill),
                      ),
                    )),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () {
                    HomePage();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  onTap: () {
                    HomePage();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.local_grocery_store),
                  title: Text("Store"),
                  onTap: () {
                    HomePage();
                  },
                )
              ],
            ),
            body:
                TabBarView(children: [HomePage(), SettingPage(), StorePage()]),
          ),
        ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Welcome Home"),
      ),
    );
  }
}

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Setting Page"),
      ),
    );
  }
}

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Store Page"),
      ),
    );
  }
}
