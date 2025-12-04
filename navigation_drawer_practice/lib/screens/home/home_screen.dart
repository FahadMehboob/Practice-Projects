import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Navigation Drawer",
          style: TextStyle(color: Colors.white70, fontSize: 20),
        ),
        backgroundColor: Colors.indigoAccent,
        actions: [
          IconButton(onPressed: (){
            scaffoldKey.currentState!.openEndDrawer();
          }, icon: const Icon(Icons.menu,color: Colors.white,))
        ],
        // leading: IconButton(
        //   onPressed: () {
        //     scaffoldKey!.currentState!.openDrawer();
        //   },
        //   icon: Icon(
        //     Icons.menu,
        //     color: Colors.white,
        //   ),
        // ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            SizedBox(
              height: 50,
            ),
            FlutterLogo(
              size: 100,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              textAlign: TextAlign.center,
              "App Title",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text("Home"),
              onTap: () {
                print("Home Icon Clicked");
              },
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Settings"),
              onTap: () {
                print("Settings Icon Clicked");
              },
              leading: Icon(Icons.settings),
            ),
            ListTile(
              title: Text("About"),
              onTap: () {
                print("About Icon Clicked");
              },
              leading: Icon(Icons.info),
            ),
            ListTile(
              title: Text("Help"),
              onTap: () {
                print("Help Icon Clicked");
              },
              leading: Icon(Icons.help),
            ),
            ListTile(
              title: Text("Logout"),
              onTap: () {
                print("Logout Icon Clicked");
              },
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
