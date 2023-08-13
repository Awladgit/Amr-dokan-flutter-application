import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      darkTheme: ThemeData(primarySwatch: Colors.deepPurple),
      color: Colors.red,
      debugShowCheckedModeBanner: false,
      home: Homeactivits(),
    );
  }
}

class Homeactivits extends StatelessWidget {
  const Homeactivits({super.key});

  MysnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('This Is Manu Icon')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amr Dokan"),
        titleSpacing: 20,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 10,
        backgroundColor: Colors.amberAccent,
        actions: [
          IconButton(
              onPressed: () {
                MysnackBar("Comments This", context);
              },
              icon: Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                MysnackBar("This is Home ", context);
              },
              icon: Icon(Icons.home)),
          IconButton(
              onPressed: () {
                MysnackBar("Search You Want", context);
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                MysnackBar("Chack The Setting", context);
              },
              icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                MysnackBar("Send Your Mail", context);
              },
              icon: Icon(Icons.email))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amberAccent,
        elevation: 15,
        child: Icon(Icons.add),
        onPressed: () {
          MysnackBar('Add Your Iteam', context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          fixedColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
            icon: Icon(Icons.message), label: 'Contact'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
          ],
          onTap: (int index) {
            if (index == 0) {
              MysnackBar('I am Home Button', context);
            }
            if (index == 1) {
              MysnackBar('I Am Contact Button', context);
            }
            if (index == 0) {
              MysnackBar('Profile View', context);
            }
          }),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
             child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              accountName:Text("Awlad Hossain", style: TextStyle(color: Colors.black),) ,
              accountEmail: Text("awladkhan349189@gamil.com",style: TextStyle(color: Colors.black),),
              currentAccountPicture:Image.network
              ("https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
             ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                MysnackBar('home', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                MysnackBar('Profile', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("Inbox"),
              onTap: () {
                MysnackBar('Inbox', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              onTap: () {
                MysnackBar('Email', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorite"),
              onTap: () {
                MysnackBar('Favorite', context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Image.network("https://logowik.com/content/uploads/images/flutter5786.jpg"),
      ),
    );
  }
}
