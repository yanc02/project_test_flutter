import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String numbers;
  bool _autoValidate = false;


  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  String _email;
  String _password;


  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      form.save();

      // Email & password matched our validation rules
      // and are saved to _email and _password fields.
      _performLogin();
    }
  }


  void _performLogin() {
    // This is just a demo, so no actual login here.
    final snackbar = SnackBar(
      content: Text('Email: $_email, password: $_password'),
    );

    scaffoldKey.currentState.showSnackBar(snackbar);
  }


  String numberValidator(String value) {
    print(value);
    if (value == null) {
      return null;
    }
    if (value.length < 6 || value.length > 6) {
      return '"$value" is not a valid number';
    }
    final n = num.tryParse(value);
    if (n == null) {
      return '"$value" is not a valid number';
    }
    return null;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Second Route"),
    ),
    body: Center(
      child: new SingleChildScrollView(
        child: Column(
          children: <Widget>[



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
                          MaterialPageRoute(builder: (context) => SecondRoute()),
                        );
                      },
                    ),
                  ],
                )
            ),


            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: <Widget> [
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Your email'),
                      validator: (val) => !val.contains('@') ? 'Not a valid email.' : null,
                      onSaved: (val) => _email = val,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Your password'),
                      validator: (val) => val.length < 6 ? 'Password too short.' : null,
                      onSaved: (val) => _password = val,
                      obscureText: true,
                    ),
                    RaisedButton(
                      onPressed: _submit,
                      child: Text('Login'),
                    ),
                  ],
                ),
              ),
            ),





          ],
        ),
      ),
    )
    );
  }
}
