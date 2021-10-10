import 'package:flutter/material.dart';
class sentMessage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints:BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width-44
        ),
        child: Expanded(
          child: Column(
            children: [
              Card(
                elevation: 1,

                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color:  Color(0XFFDDFDFF),
                margin: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10
                          ,
                          right: 60,
                          top: 20,
                          bottom: 20),
                      child: Text('Hey!!!!!! How are you??? before closing your account would u like to leave a feedback',style: TextStyle(color: Colors.grey[600],fontSize: 15),),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                child: Row(

                  children: [
                    Text('20:09'),
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
      ),
    );
  }
}
