/* Doğan Oğuz -- 2020 */


import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;  



,void main() {
  runApp(CalisanlarApp());
}

class CalisanlarApp extends StatefulWidget {
  CalisanlarAppState createState() => CalisanlarAppState();
}

class CalisanlarAppState extends State<CalisanlarApp> {

    @override
  void initState() {
   
    super.initState();
    this.veriGetir();
 
  }

  final String url = 'http://dummy.restapiexample.com/api/v1/employees'; 
  
  List data;  


  Future<String> veriGetir() async {                        
    
    var res = await http.get(Uri.encodeFull(url), 
    headers: { 
      'accept':'application/json'
       });
    setState(() {
      var content = json.decode(res.body);
      data = content['data'];
    });
    return 'başarılı!';
  }

  Widget build(context) {
    return MaterialApp(
      
        theme: ThemeData(
    
        accentColor: Colors.amber,
        
      ),

      debugShowCheckedModeBanner: false, //Debug bandını kaldırır
      title: 'Çalışan Listemiz',
      home: Scaffold(

        appBar: AppBar(

          title: Text('Çalışan Listemiz'),
          backgroundColor: Colors.blueGrey,

        ),

        body: Container(

          margin: EdgeInsets.all(10.0),
          child: ListView.builder(

            itemCount: data == null ? 0:data.length,
            itemBuilder: (BuildContext context, int index) {
            
              return Container(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    
                    children: <Widget>[
                    ListTile(

                      leading: Text(data[index]['id'], 
                      style: TextStyle(fontSize: 30.0),

                      ),
                      
                      title: Text(data[index]['employee_name'], 
                      style: TextStyle(fontSize: 25.0, color: Colors.deepOrange, 
                      fontWeight: FontWeight.bold),
                      ),
                    
                      subtitle: Column(children: <Widget>[
                        
                        SizedBox(
                          
                          height: 10,
                        
                        ),
                        Row(
                          children: <Widget>[
                            Text('ID : ', 
                            style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(data[index]['id'], 
                            style: TextStyle(fontStyle: FontStyle.italic, 
                            fontSize: 15.0),
                            ),
                          ],
                        ),
                      SizedBox(
                          
                          height: 5,
                        
                        ),
                        Row(
                          children: <Widget>[
                            Text('Maaş : ', 
                            style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(data[index]['employee_salary'])
                          ],
                        ),
                         SizedBox(
                          
                          height: 5,
                        
                        ),
                        Row(
                          children: <Widget>[
                            Text('Yaş : ', style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(data[index]['employee_age'])
                          ],
                        ),
                         SizedBox(
                          
                          height: 5,
                        
                        ),
                      ],
                      ),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: Text('DETAYLAR'),
                            
                            onPressed: () { 


                            },
                          ),
                       
                        ],
                      ),
                    ),
                  ],),
                )
              );
            },
          ),
        )
      ),
    
    );
    
  }


}