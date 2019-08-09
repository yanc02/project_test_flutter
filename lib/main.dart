import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'Loto Generator App'),
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
//        child: TextField(
//          decoration: InputDecoration(
//            border: InputBorder.none,
//            hintText: 'Enter a search term'
//          ),
//        )

//        child: MaterialButton(
//          color:Colors.red,
//          child: Text(
//              "Generate",
//          style: TextStyle(
//            fontSize: 20.0,
//            color:Colors.black,
//            ),
//          ),
//          shape: RoundedRectangleBorder(
//              borderRadius: BorderRadius.circular(15.0)
//          ),
//          onPressed:() {},
//        )

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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

                  border: OutlineInputBorder(),
                  labelText: "Field Numbers",
                  hintText: "Generated Numbers"
              ),
            ),

            MaterialButton(
              color: Colors.red,
              child: Text(
                "Generate",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
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
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
