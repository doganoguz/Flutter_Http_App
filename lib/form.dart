/*
Dogan OGUZ 
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


TextEditingController isim = new TextEditingController();
TextEditingController soyisim = new TextEditingController();
TextEditingController yas = new TextEditingController();
TextEditingController aciklama = new TextEditingController();

class FormPage extends StatefulWidget {


  @override
  _FormPageState createState() => _FormPageState();



}

class _FormPageState extends State<FormPage> {



  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff4875B0),

          title: Text("Form"),
          actions: <Widget>[


          ],
      
        ),


        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff4875B0),
          onPressed: () async {

          
          },
          
          ),

        body:SingleChildScrollView(

          padding: EdgeInsets.all(13),

          key: _formKey,

          child: Form(
            child: Column(

              children: <Widget>[



                Container(
                  alignment: Alignment.topLeft,
                  child:  Text(
                    "İsim:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight:FontWeight.w400,
                      fontFamily: 'Poppins-Regular',

                      height: 1.8,
                    ),
                  ),
                ),


                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  child:  TextFormField(
               
                    style: TextStyle(
                      fontWeight:FontWeight.w500,
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
                  child:  Text(
                    "Soyisim:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight:FontWeight.w400,
                      fontFamily: 'Poppins-Regular',

                      height: 1.8,
                    ),
                  ),
                ),


                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  child:  TextFormField(
                 
                    style: TextStyle(
                      fontWeight:FontWeight.w500,
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
                  child:  Text(
                    "Yaş:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight:FontWeight.w400,
                      fontFamily: 'Poppins-Regular',

                      height: 1.8,
                    ),
                  ),
                ),


                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  child:  TextFormField(
                    
                    style: TextStyle(
                      fontWeight:FontWeight.w500,
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
                  child:  Text(
                    "Açıklama:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight:FontWeight.w400,
                      fontFamily: 'Poppins-Regular',

                      height: 1.8,
                    ),
                  ),
                ),


                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  child:  TextFormField(
                   
                    style: TextStyle(
                      fontWeight:FontWeight.w500,
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


              ],
            ),
          ),
        ),

      ),
      debugShowCheckedModeBanner: false, 
      
       );
  }

}