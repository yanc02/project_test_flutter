import 'package:flutter/material.dart';
import 'SecondRoute.dart';
import 'MyCustomForm.dart';

class VerifyNumbers extends StatelessWidget {

  String numberValidator(String value) {
    print(value);
    if(value == null) {
      return null;
    }
    final n = num.tryParse(value);
    if(n == null) {
      return '"$value" is not a valid number';
    }
    return null;
  }

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
        child: new SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                child: Row(
                  children: [
                    Column(
                      children: <Widget>[
                        Image.asset('images/loto_logo.jpg', width: 410, height: 150, fit: BoxFit.fill),
                      ]
                    ),
                  ]
                )
              ),
              Container(
                  margin: EdgeInsets.all(25),
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: <Widget>[
                      new TextFormField(
                        maxLengthEnforced: false,
                        maxLines: null,
                        keyboardType: TextInputType.number,
                        validator: numberValidator,
//                        validator: (input) {
//                          final isDigitsOnly = int.tryParse(input);
//                          return isDigitsOnly == null
//                              ? 'Input needs to be digits only'
//                              : null;
//                        },
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
                          'Verify',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyCustomForm()),
                          );
                        },
                      ),
                    ],
                  )
              ),
              Container(
                  padding: EdgeInsets.only(top: 10),
                  alignment: Alignment.centerLeft,

                  child: Column(
                    children: <Widget>[
                      Text(
                        "Information:",
                        style: TextStyle(fontSize: 28.0, color: Colors.red),
                      ),
                      Text(
  //                      child: Icon(Icons.account_circle),
                          "Verify if your numbers has appeared before, we are verifying with data since 1998 until 2015",
                        style: TextStyle(fontSize: 20.0, color: Colors.red),
                      ),
                    ],
                  )
              ),
            ],
          ),
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
