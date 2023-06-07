import 'package:flutter/material.dart';
import 'package:assgment_m5/page2.dart';
import 'package:assgment_m5/page3.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Assignment App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Assignment App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.pages), label: "page 2"),
          BottomNavigationBarItem(icon: Icon(Icons.pages), label: "page 3"),
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const MyHomePage(title: 'Flutter Assignment App')));
          }
          if (index == 1) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const page2()));
          }
          if (index == 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const page3()));
          }
        },
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              "Home Page",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: UserAccountsDrawerHeader(
                accountName: Text("Md Rakibull Haque Sardar"),
                accountEmail: Text("Rakibull@123"),
                 arrowColor:Colors.red,
                currentAccountPictureSize: Size.square(40),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),radius: 20,
                ),
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home_filled),
            ),
            ListTile(
              title: Text("Contact"),
              leading: Icon(Icons.contact_mail),
            ),
            ListTile(
              title: Text("<More Apps>"),
              leading: Icon(Icons.more_vert),
            ),
            ListTile(
              title: Text("About"),
              leading: Icon(Icons.adb_outlined),
            ),
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
            ),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}



