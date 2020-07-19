/*
Dogan OGUZ 
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextEditingController isim = new TextEditingController();
TextEditingController soyisim = new TextEditingController();
TextEditingController yas = new TextEditingController();
TextEditingController aciklama = new TextEditingController();
TextEditingController parola = new TextEditingController();
TextEditingController test = new TextEditingController();

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  bool _goster = true;

  String password;

  void _toggle() {
    setState(() {
      _goster = !_goster;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff4875B0),
          title: Text("Form"),
          actions: <Widget>[],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff4875B0),
          onPressed: () async {
            final FormState form = _formKey.currentState;
            if (form.validate()) {
            } else {}
          },
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(13),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "İsim:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins-Regular',
                      height: 1.8,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  child: TextFormField(
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins-Regular',
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    validator: (value) =>
                        value.isEmpty ? 'İsim Alanı Boş Geçilemez!' : null,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Soyisim:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins-Regular',
                      height: 1.8,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  child: TextFormField(
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins-Regular',
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Şifre:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins-Regular',
                      height: 1.8,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  child: TextFormField(
                    controller: parola,
                    validator: (value) =>
                        value.isEmpty ? 'Parola Boş Geçilemez!' : null,
                    obscureText: _goster,
                    keyboardType: TextInputType.visiblePassword,
                    onSaved: (value) {
                      password = value;
                    },
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins-Regular',
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[200],
                      suffixIcon: IconButton(
                          icon: Icon(
                            _goster ? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: () {
                            _toggle();
                          }),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Yaş:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins-Regular',
                      height: 1.8,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Test:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins-Regular',
                      height: 1.8,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Test:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins-Regular',
                      height: 1.8,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  child: TextFormField(
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins-Regular',
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Açıklama:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins-Regular',
                      height: 1.8,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  child: TextFormField(
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins-Regular',
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Test:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins-Regular',
                      height: 1.8,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  child: TextFormField(
                    controller: test,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins-Regular',
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Cinsiyet:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins-Regular',
                      height: 1.8,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  child: TextFormField(
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins-Regular',
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Doğum Yeri :",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins-Regular',
                      height: 1.8,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.center,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15.0),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                      hint: Text("Ülke"),
                      value: _selectednationality,
                      onChanged: (newValue) {
                        setState(() {
                          //  _selectednationality = newValue;
                          FocusScope.of(context).requestFocus(new FocusNode());
                        });
                      },
                      items: _nationalityList.map((location) {
                        return DropdownMenuItem(
                          child: new Text(location),
                          value: location,
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
