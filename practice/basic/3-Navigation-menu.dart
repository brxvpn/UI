import 'package:flutter/material.dart';

void main(List<String> args) {
  var myName = "Sajad";
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text(
                  myName,
                  style: TextStyle(fontSize: 20),
                ),
                accountEmail: Text(
                  "sajad@chameleon.com",
                  style: TextStyle(fontSize: 18),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    myName[0],
                    style: TextStyle(color: Colors.teal, fontSize: 30),
                  ),
                ),
                onDetailsPressed: () {},
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.teal, Colors.teal.shade700])
                    //     image: DecorationImage(
                    //   image: NetworkImage(
                    //       "http://butraid.ru/wp-content/uploads/2018/09/techImage-300x169.jpg"),
                    //   fit: BoxFit.cover,
                    // )
                    )),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text("Setting"),
              leading: Icon(Icons.settings),
            ),
            ListTile(
              title: Text("Log out"),
              leading: Icon(Icons.exit_to_app),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Chameleon"),
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              splashColor: Colors.white,
              icon: Icon(Icons.search)),
        ],
      ),
    ),
  ));
}
