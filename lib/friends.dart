import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:testapp/drawer.dart';
import 'package:http/http.dart';
import 'loading.dart';

class NewPage extends StatefulWidget {

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  bool loading = false;
  Map data;
  List userData;
  var timeover;

  Future getData() async {
    setState(() {
      loading = true;
    });
    Response response = await get('https://reqres.in/api/users?page=2');
    data = jsonDecode(response.body);
    setState(() {
      loading = false;
      userData = data['data'];
    });

  }

  @override
  void initState() {
    super.initState();
    getData();

  }

  @override
  Widget build(BuildContext context) {

    return loading? Loading(): Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Friends'),
      ),
      drawer: NewDrawer(),
      body: ListView.builder(
        itemCount: userData.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(userData[index]['avatar']),
              ),
              title: Text(
                '${userData[index]['first_name']}'+'  '+'${userData[index]['last_name']}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('${userData[index]['email']}'),
            ),
          );
        },
      ),
    );
  }
}
//