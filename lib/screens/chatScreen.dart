


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:msp_task/components/recievedMessage.dart';
import 'package:msp_task/components/sentMessage.dart';





class ChatScreen  extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:  Colors.grey[100],


      body:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('Conversations with Matilda-27020',style: TextStyle(fontWeight: FontWeight.w900),),
          SizedBox(height: 15,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0,top: 25,bottom: 25),
                child: CircleAvatar(

                  backgroundColor: Color(0xFFDDFDFF),
                  backgroundImage: AssetImage('assets/girl.png'),
                ),
              ),
              Container(
                width: 160,
                height: 33,
                margin: EdgeInsets.only(left: 95),

                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 40),
                  child: Text(
                    'User detail'
                        ,style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  ),
                ),
                decoration: BoxDecoration(
                    color:     Color(0xff2526B1),
                borderRadius: BorderRadius.circular(12)
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),

          Stack(
            alignment: Alignment.bottomCenter,
            children:[
              Container(
              height: 550,
              width: double.infinity,


              child:  SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  child: Column(


                    children: [

                      Text('April 04, 2020'),

                      ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          receivedMessage(),
                          sentMessage(),





                        ],

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(

                              child: MaterialButton(onPressed: (){},child: Text('Close account'),),
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[300]
                            ),

                          ),
                          SizedBox(width: 5,),
                          Container(
                            child: MaterialButton(onPressed: (){},child: Text('Leave a feedback'),),
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[300]
                            ),

                          ),

                        ],
                      ),


                    ],

                  ),
                ),
              ),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.00),topRight:Radius.circular(20.00
                )),

              ),
            ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 25),
                child: Container(



                  height: 38,
                  width:300,

                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    minLines: 1,

                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(



                      filled: true,
                      fillColor: Colors.grey[100],

                      hintText: 'Write your Message here...',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none
                      ),


                      contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 25),
                      suffixIcon: CircleAvatar(
                        backgroundColor:Color(0xff260D9D),
                        radius: 10,
                        child: Icon(
                          Icons.arrow_forward,color: Colors.white,
                          size: 20,

                        ),


                      ),
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
