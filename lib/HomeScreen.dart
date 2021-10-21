
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:msp_task/screens/trendy.dart';

import 'Home.dart';


class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;

List <Widget> screens=[
Home(),
  trendy()
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:currentIndex ,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },

        items: [

          BottomNavigationBarItem(

              icon: Icon(
                  Icons.home
              ),
              label: 'Home'
          ),
          BottomNavigationBarItem(icon: Icon(
              Icons.local_fire_department
          ),
              label: 'Trendy'
                  ''
          ),

          BottomNavigationBarItem(
              icon: Icon(
                  Icons.search
              ),
              label: 'search'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.save_rounded
              ),
              label: 'save'
          ),


        ],
      ),

    );
  }

}
