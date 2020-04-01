import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Profile'),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 20.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(150, 50, 30, 30),
                ),
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('images/face.jpg'),
                ),
              ],
            ),
            SizedBox(height: 50),
            Text(
              'NAME',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Hirushan Ranasinghe',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'BIRTHDAY',
              style: TextStyle(
                letterSpacing: 2.0,
                fontSize: 20.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '01/05/1997',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 50.0,
              color: Colors.grey[800],
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey,
                    size: 30.0,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'e17272@eng.pdn.ac.lk',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 50.0,
              color: Colors.grey[800],
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.grey,
                    size: 30.0,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    '+94768657580',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
