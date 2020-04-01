import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapp/friends.dart';


void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10,30,10,0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage('images/people.jpg'),
              ),
              Text('WELCOME',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
              ),
              SizedBox(height: 30,),
              RaisedButton(
                color: Colors.black,
                child: Text('Go',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.amber,
                ),
                ),
                onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => NewPage(),
                    ));
                },
              )
            ],
          ),
        ),
      ),
      );
  }
}
