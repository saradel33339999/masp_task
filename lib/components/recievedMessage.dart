import 'package:flutter/material.dart';
class receivedMessage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [



          Expanded(
            child: Column(


              children: [
                Card(
                  elevation: 1,

                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  color:  Colors.grey[100],
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10
                        ,
                        right: 60,
                        top: 20,
                        bottom: 20),
                    child: Text('Hello sweetie i am fine what about you my dear??',maxLines: 3,style: TextStyle(color: Colors.grey[600],fontSize: 15,),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('20:04'),
                      SizedBox(width: 5,),
                      Icon(
                          Icons.done,
                          size: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
