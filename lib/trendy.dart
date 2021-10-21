


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:msp_task/screens/description_page.dart';
import 'package:msp_task/usermodel/items.dart';


class trendy extends StatelessWidget {


  var Context;
  List <items> data =[
    items(name: 'covid-19 :ICMR ', time: '10 mins read ', url: 'https://mukatafa.com/wp-content/uploads/bb-plugin/cache/main_928px-landscape.jpg'),
    items(name: 'top 10 cryptocurrency ', time: '5 mins read', url: 'https://images.unsplash.com/photo-1519162584292-56dfc9eb5db4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=775&q=80'),
    items(name: 'covid and the savings', time: '20 mins read ', url: 'https://s.france24.com/media/display/4ffe67ec-3b58-11eb-bcc6-005056bf18d4/w:1280/p:16x9/Bitcoins.webp'),
  ];



  @override
  Widget build(BuildContext context) {
    Context=context;
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 35),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,


          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text('Walk with Trend',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
              SizedBox(height: 10,),
              Text('dont stay behind,read the trend',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
              SizedBox(height: 30,),

              Container(
                height: 250,
                child:ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>picturs(), separatorBuilder:(context,index)=>SizedBox(width: 5,), itemCount: 5) ,
              ),

              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text('Top reads of the day',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
              ),
              Container(
                  height: 350,

                  child: ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),

                      itemBuilder: (context,index)=>article(data[index]), separatorBuilder:(context,index) =>SizedBox(height: 5,), itemCount: data.length))




            ],
          ),
        ),
      ),


    );
  }

  Widget article (items I)=>GestureDetector(
    onTap: (){
      Navigator.push( Context, MaterialPageRoute(builder: (context)=>description()));

    },
    child: Container(
      width: 360,
      height: 100,
      child: Row(

        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: 80,
              height: 90,
              child: Image(
                image: NetworkImage('${I.url}'),
                fit: BoxFit.cover,

              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.00),

              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Expanded(
                child: Center(child: Text('${I.name}')),),

              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(


                  children: [Text('${I.time}'),
                    SizedBox(width:20),
                    Text('Today'),

                  ],),
              ),


            ],
          ),

        ],
      ),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );
  Widget picturs()=> Container(
    width: 140,
    height: 90,
    child: Image(
      image: NetworkImage('https://ysm-res.cloudinary.com/image/upload/ar_16:9,c_fill,dpr_2.0,f_auto,g_faces:auto,q_auto:eco,w_900/v1/yale-medicine/live-prod/ym_new/images/e1bc4546-5327-45df-8b8a-cd824aeefcfd_tcm990-378058.jpg'),
      fit: BoxFit.cover,

    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.00),

    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
  );
}
