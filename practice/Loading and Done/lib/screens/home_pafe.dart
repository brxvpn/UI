import 'package:flutter/material.dart';

enum ButtonState { init, loading, done }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myName = "Ali";
  bool isAnimating = true;
  ButtonState state = ButtonState.init;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isDone = state == ButtonState.done;
    final isStretched = isAnimating || state == ButtonState.init;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Center(
          child: Text("Chameleon Vpn", style: TextStyle(color: Colors.white)),
        ),
        elevation: 0,
      ),
      // leading: Image.asset("assets/logo.png", width: 45, height: 45),
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
                // onDetailsPressed: () {},
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
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(32),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
          width: state == ButtonState.init ? width : 70,
          onEnd: () => setState(() => isAnimating = !isAnimating),
          height: 70,
          child: isStretched ? buildButton() : buildSmallButton(isDone),
        ),
      ),
    );
  }

  Widget buildButton() => OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(width: 2, color: Colors.indigo),
        ),
        child: FittedBox(
          child: Text(
            'CONNECT',
            style: TextStyle(
              fontSize: 24,
              color: Colors.indigo,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        onPressed: () async {
          setState(() => state = ButtonState.loading);
          await Future.delayed(Duration(seconds: 3));
          setState(() => state = ButtonState.done);
          await Future.delayed(Duration(seconds: 3));
          setState(() => state = ButtonState.init);
        },
      );

  Widget buildSmallButton(bool isDone) {
    final color = isDone ? Colors.green : Colors.indigo;
    return Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: Center(
          child: isDone
              ? Icon(
                  Icons.done,
                  size: 52,
                  color: Colors.white,
                )
              : CircularProgressIndicator(
                  color: Colors.white,
                ),
        ));
  }
}
