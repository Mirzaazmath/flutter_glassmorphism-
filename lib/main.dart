import 'dart:ui';

import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
//  make sure you add background image,
//make sure you add the border to glass border
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:const  BoxDecoration(
          // this is the background image
          image: DecorationImage(
            image: AssetImage("assets/image2.jpeg"),fit: BoxFit.fill

          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // here we are adding the blur effect
           BackdropFilter(filter:ImageFilter.blur(sigmaY: 5,sigmaX: 5),
          child:  Container(
            padding:const  EdgeInsets.all(20),
             height: 650,
             width: 350,
             decoration: BoxDecoration(

                 borderRadius: BorderRadius.circular(20),
                 color: Colors.white.withOpacity(0.19),
                 border: Border.all(color: Colors.white54),
                 // noise image to improve the glass effect
                 image:const  DecorationImage(
                     image: AssetImage("assets/i.jpeg"),fit: BoxFit.fill,opacity: 0.08

                 )
             ),
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(80),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffCB25FA),
                        Color(0xffA42EEF)

                      ]
                    )
                  ),
                  child: const Icon(Icons.person,color: Colors.white,size: 50,),

                ),
               const  SizedBox(height: 20,),

              const   Text("Welcome Back!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
               const  SizedBox(height: 20,),
               const  Text("LOGIN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
               const  SizedBox(height: 20,),
                Row(children:const  [
                  Text("UserName :",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                ],),
                const SizedBox(height: 10,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.3)
                  ),
                ),
                const SizedBox(height: 30,),
                Row(children:const  [
                  Text("Password :",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                ],),
               const  SizedBox(height: 10,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withOpacity(0.3)
                  ),
                ),
               const  SizedBox(height: 30,),
                Container(
                  height: 50,
                  width: double.infinity,

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(80),
                      gradient:const  LinearGradient(
                          colors: [
                            Color(0xffCB25FA),
                            Color(0xffA42EEF)

                          ]
                      )
                  ),
                  alignment: Alignment.center,
                  child:const  Text("LOGIN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),


                ),
              ],
            ),
           ))
          ],
        ),
      ),
      );

  }
}

