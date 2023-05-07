import 'dart:ui';

import 'package:flutter/material.dart';


/// this widget is for circle glass ///
class GlassWidget extends StatelessWidget {
  Widget child;
  double? height;
  double? width;
  Color ?color;

  GlassWidget({required this.child,this.width,this.height,this.color});



  @override
  Widget build(BuildContext context) {
    return    // here we are adding the blur effect
      BackdropFilter(filter:ImageFilter.blur(sigmaY: 0,sigmaX: 0),
          child:
          Container(
            height: height?? 50,
            width:width?? 50,



            decoration: BoxDecoration(

                shape: BoxShape.circle,
                color:color?? Colors.white.withOpacity(0.29),

                // noise image to improve the glass effect
                image:const  DecorationImage(
                    image: AssetImage("assets/i.jpeg"),fit: BoxFit.fill,opacity: 0.01

                )
            ),
            alignment: Alignment.center,
            child: child,
          )
      );
  }
}




/// this widget is for border radius conners ///
class GlassWidgetR extends StatelessWidget {
  Widget child;
  double? height;
  double? width;

  GlassWidgetR({required this.child,this.width,this.height});



  @override
  Widget build(BuildContext context) {
    return    // here we are adding the blur effect
      BackdropFilter(filter:ImageFilter.blur(sigmaY: 0,sigmaX: 0),
          child:
          Container(
            height: height?? 50,
            width:width?? 50,



            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(30),


                color: Colors.white.withOpacity(0.29),

                // noise image to improve the glass effect
                image:const  DecorationImage(
                    image: AssetImage("assets/i.jpeg"),fit: BoxFit.fill,opacity: 0.01

                )
            ),
            alignment: Alignment.center,
            child: child,
          )
      );
  }
}




/// this widget is for blur container ////
class ChairListWidget extends StatelessWidget {
  Widget child;
  ChairListWidget({required this.child});



  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xff97c0cc).withOpacity(0.9),

                    Colors.white.withOpacity(0.1),
                    Colors.transparent

                  ]
              )
          ),

          child: child,
        ),

      ),
    );
  }
}