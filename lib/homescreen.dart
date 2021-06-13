import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:url_launcher/url_launcher.dart';

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Task 2'),
          backgroundColor: Colors.teal,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.amber,
              ),
              onPressed: () {},
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Image(
                  image: AssetImage('images/androidLogo.png'),
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Toast.show('Item 1 is Pressed!', context,
                      duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  Toast.show('Item 2 is Pressed!', context,
                      duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                },
              ),
              ListTile(
                title: Text('Help'),
                onTap: () async {
                  const url = 'https://flutter.dev/docs/cookbook/design/drawer';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not Launch $url';
                  }
                },
              )
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(top: 5.0),
                child: Image(
                  image: AssetImage('images/pizza.png'),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 200,
                width: 250,
                child: Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(Icons.ac_unit_rounded),
                  Icon(Icons.camera),
                  Icon(Icons.music_note_outlined),
                  Icon(Icons.add_shopping_cart)
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: Container(
                  child: TextField(),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Toast.show('Button 1 Pressed!!', context,
                    duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
              },
              child: Text('Button 1'),
              style: TextButton.styleFrom(
                primary: Colors.amber,
                backgroundColor: Colors.teal,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'secondScreen');
              },
              child: Text('SUBMIT'),
              style: TextButton.styleFrom(
                primary: Colors.amber,
                backgroundColor: Colors.teal,
              ),
            ),
            SizedBox(
              height: 5.0,
            )
          ],
        ),
      ),
    );
  }
}
