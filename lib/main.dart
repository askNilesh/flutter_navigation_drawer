import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(new HomeApp());

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: new ThemeData(
          primarySwatch: Colors.deepPurple,
          brightness: Brightness.light,
          accentColor: Colors.red),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageScreen createState() => _HomePageScreen();
}

class _HomePageScreen extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: Drawer(
        child: new ListView(
          padding: new EdgeInsets.all(0.0),
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Nilesh Rathod"),
              accountEmail: new Text("nilesh@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text("Nilu"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text("Pilu"),
                ),
              ],
            ),
            new ListTile(
              title: new Text("Home"),
              trailing: new Icon(Icons.new_releases),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Profile"),
              trailing: new Icon(Icons.person),
              onTap: () => {},
            ),
            new Divider(),
            new ListTile(
              title: new Text("Tab Layout"),
              trailing: new Icon(Icons.person),
              onTap: () => {},
            ),
            new Divider(),
            new ListTile(
              title: new Text("Comman View Demo"),
              trailing: new Icon(Icons.person),
              onTap: () => {},
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: new Center(
        child: new Text("Home Screen"),
      ),
    );
  }
}
