




import 'package:flutter/material.dart';
import 'package:msp_task/usermodel/Items.dart';


Widget chats (items I)=>Card(

  child: Column(

    children: [

      Row(

        children: [

          Padding(

            padding: const EdgeInsets.only(left: 20,bottom: 10,top: 10),

            child: CircleAvatar(

              backgroundImage: NetworkImage('${I.url}'

              ),

            ),

          ),

          SizedBox(width: 15,),

          Column(

            crossAxisAlignment:   CrossAxisAlignment.start,

            children: [

              Text('${I.name}'),

              SizedBox(height: 5,),

              Text('${I.time}'),



            ],

          ),

          Spacer(),

          Column(

            children: [

              Padding(

                padding: const EdgeInsets.only(right: 20),

                child: CircleAvatar(

                  radius: 10,

                  backgroundColor: Color(0xff2526B1),

                  child: Icon(

                    Icons.done,

                    size: 13,

                  ),

                ),

              ),

            ],

          )

        ],

      ),



      Row(

        children: [

          Padding(

            padding: const EdgeInsets.only(left: 25,bottom: 10),

            child: Container(

              width: 30,

              height: 20,

              child: Center(

                child: Text(

                    '1'

                ),

              ),



              decoration: BoxDecoration(

                  color: I.color,

                  borderRadius: BorderRadius.circular(15.00)

              ),

            ),

          ),

          SizedBox(width: 25,),

          Expanded(child: Padding(

            padding: const EdgeInsets.only(bottom: 15),

            child: Text('${I.message} ',maxLines: 2,overflow: TextOverflow.ellipsis,),

          )),



        ],

      ),



    ],

  ),

  elevation: 10,

  shadowColor: Colors.grey,

  shape: RoundedRectangleBorder(

      borderRadius: BorderRadius.circular(12)

  ),



) ;




