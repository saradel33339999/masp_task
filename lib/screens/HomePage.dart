


import 'package:flutter/material.dart';
import 'package:msp_task/screens/allChats.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.centerRight,colors:  <Color>[
            Color(0xff260D9D),
            Color(0xff6CE2D8
            )
          ],

          ),

        ),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: 800,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Image(
                    width: 100,
                    height: 100,
                    image: AssetImage('assets/brain.png')

                    ,),
                     Text('UserBot',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 25),),

              SizedBox(height: 100,),

                  Container(

                   height: 480,
                    width: double.infinity,

                    child:  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 27,vertical: 20),
                      child: Column(
                        children: [
                          Text('Welcome in UserBot!',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25),),
                          SizedBox(height: 20,),


                           Padding(
                             padding: const EdgeInsets.symmetric(vertical: 20),
                             child: Form(
                              child: Column(

                                children: [

                                  TextFormField(


                                    decoration: InputDecoration(


                                  border: OutlineInputBorder(





                                    borderRadius: BorderRadius.circular(15),

                                  ),
                                      hintText: 'insert your email',
                                      hintStyle: TextStyle(color: Colors.grey),
                                      prefixIcon: Icon(
                                        Icons.email
                                            ,
                                        color: Color(0xff6BDCD3
                                      ) ,
                                      )

                                    ),
                                  ),
                                  SizedBox(height: 8,),

                                  TextFormField(


                                    decoration: InputDecoration(



                                        border: OutlineInputBorder(





                                          borderRadius: BorderRadius.circular(15),

                                        ),
                                        hintText: 'insert your password',



                                        hintStyle: TextStyle(color: Colors.grey),
                                        prefixIcon: Icon(
                                          Icons.lock_open_outlined
                                          ,
                                          color: Color(0xff6BDCD3) ,
                                        ),


                                    ),
                                  ),
                                  TextButton(onPressed: (){}, child: Text('i don\'t remember my password',style: TextStyle(
                                    color: Color(0xff260D9D),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900
                                  ),
                                  ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Container(
                                      width: 200,
                                        child: MaterialButton(onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>allChats()));
                                        },
                                          child: Text('Accedi',style: TextStyle(color: Colors.white),),),


                                      decoration: BoxDecoration(
                                        color: Color(0xff48ABA4),
                                        borderRadius: BorderRadius.circular(15),

                                      ),


                                    ),
                                  ),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                       Text('Don\'t have an account? ',style: TextStyle(
                                         fontWeight: FontWeight.w900

                                       ),
                                       ),
                                         TextButton(onPressed: (){}, child: Text('Register',style: TextStyle(
                                             fontSize: 15,
                                           color:  Color(0xff260D9D)
                                         ),))

                                     ],
                                     ),
                                ],
                              ),
                          ),
                           ),


                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20.00),topRight:Radius.circular(20.00
                      )),

                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),



    );
  }
}
