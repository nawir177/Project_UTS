import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new CardProfile(),
      routes: <String, WidgetBuilder>{
        'CardProfile': (BuildContext context) => new CardProfile(),
        'Detail': (BuildContext context) => new Detail(),
      },
    ));

class CardProfile extends StatelessWidget {
  const CardProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: new AppBar(
        backgroundColor: Colors.white,
        leading: new Icon(
          Icons.account_circle_rounded,
          color: Colors.teal,
        ),
        title: new Text(
          "Profile Page",
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/img/nawir.jpg'),
            ),
            Text(
              'Nawir',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text('FLUTTER DEVELOPER',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                    color: Colors.teal.shade100,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 50.0,
              width: 150.0,
              child: Divider(color: Colors.teal.shade100),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.teal),
                title: Text(
                  '+62 0822-9077-3951',
                  style: TextStyle(color: Colors.teal.shade900, fontSize: 20.0),
                ),
                onTap: () {
                  Navigator.popAndPushNamed(context, 'Detail');
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.teal),
                title: Text(
                  'M.Nawir177@gmail.com',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900,
                    fontFamily: 'Sourcr Sans Pro',
                  ),
                ),
                onTap: () {
                  Navigator.popAndPushNamed(context, 'Detail');
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Icon(Icons.add_chart_outlined, color: Colors.teal),
                title: Text(
                  'Kelas 5A SI Reg Pagi BJM',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900,
                    fontFamily: 'Sourcr Sans Pro',
                  ),
                ),
                onTap: () {
                  Navigator.popAndPushNamed(context, 'Detail');
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.teal),
                title: Text(
                  '+62 0822-9077-3951',
                  style: TextStyle(color: Colors.teal.shade900, fontSize: 20.0),
                ),
                onTap: () {
                  Navigator.popAndPushNamed(context, 'Detail');
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Icon(Icons.add_location_rounded, color: Colors.teal),
                title: Text(
                  'Kotabaru',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900,
                    fontFamily: 'Sourcr Sans Pro',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: new AppBar(
        backgroundColor: Colors.white,
        leading: new Icon(
          Icons.account_circle_rounded,
          color: Colors.teal,
        ),
        title: new Text(
          "Detail Page",
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: new SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Muhammad Nawir',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'CardProfile');
                },
                icon: Icon(Icons.exit_to_app, color: Colors.white))
          ],
        ),
      ),
    );
  }
}
