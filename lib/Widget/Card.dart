import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  Cards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      widthFactor: 1,
      heightFactor: 1,
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Test'),
              subtitle: Text('02.03.2020 - 10:54 Tarihinde Giriş Yaptı'),
            ),
            const ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Admin'),
              subtitle: Text('02.03.2020 - 15:54 Tarihinde Giriş Yaptı'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('İncele'),
                  onPressed: () {/* ... */},
                ),
                FlatButton(
                  child: const Text('Sil'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
