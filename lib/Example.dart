import 'package:flutter/material.dart';

void main() => runApp(MyApp());

const kBlackHalf = const Color(0xFF212121);
const kBlackLight = const Color(0xFF484848);
const kBlack = const Color(0xFF000000);
const kYellow = const Color(0xFFffd600);
const kYellowLight = const Color(0xFFffff52);
const kYellowDark = const Color(0xFFc7a500);
const kWhite = Colors.white;
const lightBlue = const Color(0xFF0277BD);
const lightBlueL = const Color(0xFF81D4FA);




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dominican Loto Generator App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(
          title: 'Dominican Loto Generator App',
      ),
    );
  }
}




class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

}






class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  String displayText;
  String inputText;

  void changeText(){
    setState(() {
      displayText = inputText;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              "$displayText",
            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
            TextField(
              onChanged: (text){
                inputText = text;
              },

              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: kBlack,
                    ),
                  ),
                  labelText: "Field Numbers",
                  hintText: "Generated Numbers",
                  hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: lightBlue,
                  ),
                  labelStyle: TextStyle(
                      color: lightBlue,
                      fontSize: 24.0
                  ),
              ),
            ),

            MaterialButton(
              color: Colors.red,
              child: Text(
                "Generate",
                style: TextStyle(
                  fontSize: 20.0,
                  color: lightBlueL,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
//              onPressed: () {},
              onPressed: changeText,

            )
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
