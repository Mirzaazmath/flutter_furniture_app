import 'dart:ui';

import 'package:flutter/material.dart';

import '../Data/data.dart';
import '../Utils/glassdesigns/glasswidget.dart';
import 'detailscreen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 55,
        leading: Padding(
          padding:const  EdgeInsets.only(left: 10),

            child: GlassWidget(child:const  Text("i",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),)),


        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
         GlassWidget(child: const Icon(Icons.bookmark_outline))
          
        ],

      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Image.asset("assets/image1.jpeg",fit: BoxFit.fill,),

            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration:const  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/tile2.webp",),fit: BoxFit.cover,
                ),
               
              ),
              child: Container(
                color: Colors.black.withOpacity(0.3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child:

                       ChairListWidget(
                         child: Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: SingleChildScrollView(
                             scrollDirection: Axis.horizontal,
                             child: Row(
                               children: imagelist.map((e) =>  Padding(
                                 padding: const EdgeInsets.only(right: 10),
                                 child: GestureDetector(
                                   onTap: (){
                                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen(e)));
                                     },
                                   child: ClipRRect(
                                     borderRadius: BorderRadius.circular(10),
                                     child: GlassWidgetR(
                                         height: double.infinity,
                                         width: 170,

                                         child: Padding(
                                           padding: const EdgeInsets.all(10),
                                           child: Column(
                                             children: [
                                               Expanded(
                                                 child: Container(
                                                   decoration: BoxDecoration(
                                                       color: Colors.white,
                                                       borderRadius: BorderRadius.circular(10),
                                                     image: DecorationImage(image: AssetImage(e),fit: BoxFit.fill)
                                                   ),

                                                 ),
                                               ),
                                               SizedBox(height: 20,
                                                 child: Row(
                                                   mainAxisAlignment: MainAxisAlignment.center,
                                                   children: [for(int i=0;i<5;i++)...[

                                                     Padding(
                                                       padding: const EdgeInsets.all(3),
                                                       child: GlassWidget(
                                                         height: 8,
                                                           width: 8,
                                                           color:i==0?Colors.white: Colors.white54,
                                                           child: Container()),
                                                     )
                                                   ]


                                                   ],
                                                 ),

                                               ),


                                               const Text("SEDIA AL! D'ANED",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                             ],
                                           ),
                                         )),
                                   ),
                                 ),
                               )).toList()

                             ),
                           ),
                         ),
                       )



                        ),


                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: iconlist.map((e) => Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GlassWidget(
                            height: 60,
                              width: 60,
                              child: Icon(e,color: Colors.white,size: 30,)),
                        )).toList(),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,bottom: 8,right: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: GlassWidgetR(
                          height: 55,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GlassWidget(
                                  color: Colors.white,
                                    child:const  Icon(Icons.home_outlined)),
                                GlassWidget(

                                    child:const  Icon(Icons.search_rounded,color: Colors.white,)),
                                GlassWidget(

                                    child:const  Icon(Icons.shopping_cart,color: Colors.white,)),
                                GlassWidget(

                                    child:const  Icon(Icons.settings_outlined,color: Colors.white,)),
                              ],

                            ),

                          ),),
                      ),
                    ),



                  ],
                ),
              )


            ),
          )

        ],
      ),
    );
  }
}




