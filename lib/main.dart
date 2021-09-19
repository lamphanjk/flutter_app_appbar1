import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
    child: MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.pink,),
          elevation: 10.0,
          shadowColor: Colors.red,
          backgroundColor: Colors.blue.shade400,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){
              print('Live');
        },
            
          ),
          title: Text(
            'Practice with Appbar',
          ),
          centerTitle: false,
          actions: <Widget>[
            Center(
              child: Text(
                '+1',
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Icon(
              Icons.notifications,
            ),
            SizedBox(
              width: 10.0,
            ),
            Icon(
              Icons.settings,
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab (icon: Icon(Icons.favorite, color: Colors.red,),),
              Tab (icon: Icon(Icons.contact_phone),),
              Tab(icon: Icon(Icons.email),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Favorite')),
            Center(child: Text('Phone')),
            Center(child: Text('Email')),
          ],
        ),
      ),
    ),
    );
  }
}
