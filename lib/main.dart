import 'package:flutter/material.dart';
import 'SecondRoute.dart';

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
      appBar: AppBar(
        title: const Text('Dominican Loto Generator App',
            style: TextStyle(color: Colors.red)),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
          child: Column(
//            mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
//            decoration: new BoxDecoration(color: Colors.yellow),
            child: Column(
                children: <Widget>[
                  Image.asset('images/loto_logo.jpg',
                  width: 400,
                  height: 150,
                  fit:BoxFit.fill),

//              RaisedButton(
//                child: Text('VerifyNumbers'),
//                onPressed: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => SecondRoute()),
//                  );
//                },
//              ),
            ]),
          ),
          RaisedButton(
            child: Text('Open route'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
          ),
//          RaisedButton(
//            child: Text('Open route'),
//            onPressed: () {
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => SecondRoute()),
//              );
//            },
//          ),
//          RaisedButton(
//            child: Text('Open route'),
//            onPressed: () {
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => SecondRoute()),
//              );
//            },
//          ),
        ],






//          child: RaisedButton(
//            child: Text('Open route'),
//            onPressed: () {
//              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondRoute()),
//              );
//            },
//          ),
//          child: RaisedButton(
//              child: Text('Open reoute2'),
//            onPressed: null,
//
//          )
      )),
    );
  }
}
