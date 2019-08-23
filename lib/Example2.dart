import 'package:flutter/material.dart';
import 'SecondRoute.dart';
import 'Example2.dart';


class Example2 extends StatelessWidget {
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
        child: Row(
          children: [
            Column(
              children: <Widget>[
                Container(
                    child:Row(
                     children: <Widget>[
                       Text("Hola mundo la vida es buena pero no tanto"),
                     ],
                    )

                ),
              Text("Hola mundo"),
              ],
            ),
            Column(
              children: <Widget>[
                Text("Hola mundo2"),
                Text("Hola mundo2"),
              ],
            ),
          ],
        )
      ),
    );
  }
}
