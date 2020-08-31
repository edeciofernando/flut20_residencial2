import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'Residencial Avenida',
              ),
              accountEmail: Text(
                'avenida@gmail.com',
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Modelos de Casas'),
              subtitle: Text('Veja as plantas das casas'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // print('Clicou no menu');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
