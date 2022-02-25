import 'package:demo_app/view/SecondScreen.dart';
import 'package:flutter/material.dart';

import 'FirstScreen.dart';
class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("project"),
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
          actions: [
            IconButton(icon: Icon(Icons.account_circle_rounded),onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (con)=>SecondScreen()));}),
            SizedBox(width: 15,),
            Icon(Icons.menu),
            SizedBox(width: 10,),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car),),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body:TabBarView(
          children: [
            FirstScreen(),
            SecondScreen(),
          ],
        ),
      ),
    );

  }
}
