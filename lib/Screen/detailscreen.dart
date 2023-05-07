import 'dart:ui';

import 'package:flutter/material.dart';

import '../Data/data.dart';
import '../Utils/glassdesigns/glasswidget.dart';
class DetailScreen extends StatelessWidget {
  String image;
  DetailScreen(this.image);


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
              decoration:  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image,),fit: BoxFit.cover,
                ),

              ),

             // child: Image.asset(image,fit: BoxFit.fill,),

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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 100,

                          child:

                          ChairListWidget(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
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
                                            child:const  Icon(Icons.arrow_back)),
                                        Row(
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

                                        GlassWidget(
                                            color: Colors.white,

                                            child:const  Icon(Icons.arrow_forward,)),
                                      ],

                                    ),

                                  ),),
                              ),
                            ),
                          )



                      ),
                      Expanded(
                        child: Padding(
                          padding:const EdgeInsets.all(20),

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: GlassWidgetR(
                                width: double.infinity,
                                child: Padding(
                                  padding:const  EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                          child: Container(

                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                const  Text("SEDIA AL! D'ANED",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
                                              const Spacer(),
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(30),
                                                  child: GlassWidgetR(
                                                    height: 50,
                                                      width: double.infinity,
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children:const  [
                                                            Text("1",style: TextStyle(color: Colors.white24,fontWeight: FontWeight.bold,fontSize: 30)),
                                                          Text("2",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
                                                          Text("3",style: TextStyle(color: Colors.white24,fontWeight: FontWeight.bold,fontSize: 30)),

                                                        ],

                                                  ),
                                                      )),
                                                )
                                              ],
                                            ),

                                      )),
                                      Expanded(child: Container(

                                        child: Column(
                                          children: [
                                           const  CircleAvatar(

                                              backgroundColor: Color(0xff8bdf74),
                                            radius: 5,),
                                          const   Icon(Icons.bedroom_child_outlined,color: Colors.white,size: 50,),
                                          const   Spacer(),
                                            Container(
                                              margin:const  EdgeInsets.only(left: 20),
                                              height: 50,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                color: Colors.deepOrangeAccent

                                              ),
                                              alignment: Alignment.center,
                                              child: const Text("\$ 499",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                            )
                                          ],
                                        ),
                                      ))

                                    ],
                                  ),
                                )),
                          ),
                        )
                      )








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




