import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  Button({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: const EdgeInsets.symmetric(vertical: 12.0),
        child: new Material(
            elevation: 5.0,
            child: new MaterialButton(
    height: 50,
    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
    child: RaisedButton(
    textColor: Colors.white,
    color: Color(0xff4875B0),
    child: Text('LOGIN'),
                onPressed: onPressed
            )
        )
    ));

  }

}