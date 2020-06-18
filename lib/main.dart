import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Ninja ID Card'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'name',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Safnas',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'CURRENT PROGRAMMER LEVEL',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '6',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.email, color: Colors.grey[400]),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('iamsafnas@gmail.com',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 18.0,
                          letterSpacing: 1.0))
                ],
              )
            ],
          ),
        ));
  }
}
