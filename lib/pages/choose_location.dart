import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() {
    //simulate network request fro a username
    Future.delayed(Duration(seconds: 3), () {
      print('yoshi');
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print('build run');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {});
        },
      ),
    );
  }
}
