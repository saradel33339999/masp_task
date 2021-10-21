




import 'package:flutter/material.dart';
import 'package:msp_task/screens/description_page.dart';
import 'package:msp_task/usermodel/items.dart';

class Home extends StatelessWidget {
  List <String> texts =[
    'covid-19',

    'crypto',
    'Tech',
    'sport',
    'Cooking'


  ];
  List <items> data =[
    items(name: 'How income tox rule', time: '15 mins read ', url: 'https://www.reuters.com/resizer/zWltVMowBK2ZPiz6_vhXNF7VkoM=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/JQOZDGUJYZJU3FGIQ7SFRPCLWU.jpg'),
    items(name: 'top 10 cryptocurrency ', time: '8 mins read', url: 'https://images.unsplash.com/photo-1519162584292-56dfc9eb5db4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=775&q=80'),
    items(name: 'How income tox rule', time: '15 mins read ', url: 'https://www.reuters.com/resizer/zWltVMowBK2ZPiz6_vhXNF7VkoM=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/JQOZDGUJYZJU3FGIQ7SFRPCLWU.jpg'),
  ];
  var Context ;
  @override
  Widget build(BuildContext context) {
    Context=context;
    return Scaffold(



    body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,


          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(



                children: [



                  Padding(







                    padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 2),







                    child:   Container(
                      width: 285,
                      child: TextFormField(















                        decoration: InputDecoration(















                          suffixIcon: Icon(















                              Icons.search















                          ),















                          hintText: 'Search News',















                          fillColor: Colors.grey[200],















                          filled: true,















                          border: OutlineInputBorder(















                              borderSide:  BorderSide.none,







                              borderRadius: BorderRadius.circular(30)







                          ),























                        ),















                      ),
                    ),







                  ),



                  Icon(Icons.menu),



                ],



              ),
              Text('Good Morning',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
              SizedBox(height: 10,),
              Text('Explore the world by one click',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
              SizedBox(height: 30,),
              Center(
                child: Container(
                  width: 250,
                  height: 250,
                  child: Image(
                    image: NetworkImage('https://ysm-res.cloudinary.com/image/upload/ar_16:9,c_fill,dpr_2.0,f_auto,g_faces:auto,q_auto:eco,w_900/v1/yale-medicine/live-prod/ym_new/images/e1bc4546-5327-45df-8b8a-cd824aeefcfd_tcm990-378058.jpg'),
                    fit: BoxFit.cover,

                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.00),

                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                ),
              ),
              SizedBox(height: 20,),
              Container(
                  height: 20,


                  child: ListView.separated(
                      scrollDirection:Axis.horizontal,

                      shrinkWrap: true,
                      itemBuilder:(context,index)=>strings(texts[index]) , separatorBuilder: (context,index)=>SizedBox(width: 10,), itemCount: texts.length)),
              Container(
                  height: 250,

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
  Widget strings (String text) => Text('${text}',style: TextStyle(fontSize: 18),);
  Widget article (items I)=>GestureDetector(
    onTap:  (){
      Navigator.push(Context,MaterialPageRoute(builder: (context)=>description()) );
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
}
