

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:msp_task/components/chats.dart';

import 'package:msp_task/usermodel/Items.dart';


class allChats extends StatefulWidget {

  @override
  _allChatsState createState() => _allChatsState();
}

class _allChatsState extends State<allChats> {


  int itemCount=0;
  bool  isActive=true;
  List <items> Items = [
    items(
      name: 'sofya',
      message: 'Hello how are u i hope to be okay',
      color:  Color(0xff6BDCD3),
      time: '1 day', url: 'https://cdn-icons-png.flaticon.com/512/3048/3048163.png',

    ),
    items(name: 'sally',
        url: 'https://cdn-icons-png.flaticon.com/512/3048/3048157.png',
        message: 'Let\'s go to the gym',
        time: '1 day',
        color:  Color(0xff6BDCD3)
    ),
    items(name: 'marina',
        url: 'https://cdn-icons-png.flaticon.com/512/3048/3048153.png',
        message: 'I Am so busy today',
        time: '2 day',
        color:  Color(0xff6BDCD3)
    ),
    items(name: 'mariam',
        url: 'https://cdn-icons-png.flaticon.com/512/3048/3048223.png',
        message: 'I Am so busy today',
        time: '3 day',
        color:  Color(0xff6BDCD3)
    ),
  ];

  void listAppear(){
    Future.delayed(Duration(seconds: 2),(){
      setState(() {
        itemCount=Items.length;
      });
    });
  }




  @override
  Widget build(BuildContext context) {



listAppear();

    return Scaffold(

      backgroundColor:  Colors.grey[100],


      body:Column(

        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('Conversations',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0,top: 25,bottom: 25),
                child: CircleAvatar(

                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),

                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    isActive=true;
                  });
                },
                child: Container(
                  width: 110,
                  height: 33,
                  margin: EdgeInsets.only(left: 25),

                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                    child: Text(
                      'Active'
                      ,style: TextStyle(
                      color: isActive? Colors.white: Colors.grey,
                      fontSize: 15,
                    ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: isActive? Color(0xff2526B1):Colors.white,
                      borderRadius: BorderRadius.circular(12)
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    isActive=false;

                  });
                },
                child: Container(
                  width: 110,
                  height: 33,
                  margin: EdgeInsets.only(left: 5),

                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 25),
                    child: Text(
                      'Archived'
                      ,style: TextStyle(
                      color: isActive? Colors.grey: Colors.white,
                      fontSize: 15,
                    ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: isActive ? Colors.white: Color(0xff2526B1),
                      borderRadius: BorderRadius.circular(12)
                  ),
                ),
              ),
            ],
          ),


          Stack(
            alignment: Alignment.bottomCenter,
            children:[
              Container(
                height: 550,
                width: 600,


                child:  SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(



                      children: [
                        Container(
                          height: 450,



                                child: ListView.separated(itemBuilder:(context,index)=> chats(Items[index]), separatorBuilder: (context,index)=>SizedBox(height: 5,), itemCount:itemCount )),







                      ],

                    ),
                  ),
                ),

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.00),topRight:Radius.circular(20.00
                  )),

                ),
              ),
              Positioned(

                bottom: 100,
                right: 19,
                child: Container(
                  height: 45,
                  child: FloatingActionButton(
                      onPressed: (){},child: Icon(
                    Icons.add,

                  ),

                  ),
                ),
              ),
              Container(
                height: 85,
                width: double.infinity,
                child: Card(


                shadowColor: Colors.grey[700],
                elevation: 250,



                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Icon(Icons.message_sharp,
                     color: Color(0xff2526B1),),

                      SizedBox(width: 100,),
                      Icon(
                        Icons.notifications_active,
                        color: Colors.grey[400],
                      ),
                    ],

                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.00),
                      topRight: Radius.circular(20.00),
                      bottomRight: Radius.circular(40.00),
                      bottomLeft: Radius.circular(40.00),

                    ),

                ),
                ),
              ),
        ],
      ),
    ],
      ),
    );
  }
}
