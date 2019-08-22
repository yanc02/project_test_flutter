import 'package:flutter/material.dart';
import 'SecondRoute.dart';

class VerifyNumbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.red, //change your color here
        ),
        title: const Text('Dominican Loto Generator App',
            style: TextStyle(color: Colors.red)),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Column(
                  children: <Widget>[
                Image.asset('images/loto_logo.jpg',
                    width: 450, height: 150, fit: BoxFit.fill),
              ]),
            ),
            Container(
                margin: EdgeInsets.all(25),
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        labelText: "Field Numbers",
                        hintText: "Verify Numbers",
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Colors.lightBlue,
                        ),
                        labelStyle:
                            TextStyle(color: Colors.lightBlue, fontSize: 24.0),
                      ),
                    ),
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
                  ],
                )
            ),
          ],
        ),
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
