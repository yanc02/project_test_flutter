import 'package:flutter/material.dart';
import 'SecondRoute.dart';
import 'verifyNumbers.dart';

void main() {
  runApp(MaterialApp(
    title: 'Dominican Loto Generator App',
//    theme: ThemeData(
//      primarySwatch: Colors.yellow,
//    ),
    home: IndexView(),
  ));
}

class IndexView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text('Dominican Loto Generator App',
            style: TextStyle(color: Colors.red)),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Container(
//              width: 100,
//              height: 100,
//              margin: EdgeInsets.all(24),
//              padding: EdgeInsets.only(top: 24),
//              alignment: Alignment.center,
//              transform: Transform.rotate(...),
//              child: MyCoolWidget()
//            decoration: new BoxDecoration(color: Colors.yellow),
//            margin: EdgeInsets.all(70),
            padding: EdgeInsets.only(top: 110),
            child: Column(children: <Widget>[
              Image.asset('images/loto_logo.jpg',
                  width: 450, height: 150, fit: BoxFit.fill),
            ]),
          ),
          Container(
//            decoration: new BoxDecoration(color: Colors.yellow),
//            margin: EdgeInsets.all(100),
            padding: EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.lightBlue[700],
//                    textColor: Colors.red,
//                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Generate Numbers',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                  ),
                  RaisedButton(
                    color: Colors.lightBlue[700],
                    child: Text(
                      'Verify Numbers',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VerifyNumbers()),
                      );
                    },
                  ),
                ]),
          ),
        ],
      )),
    );
  }
}
