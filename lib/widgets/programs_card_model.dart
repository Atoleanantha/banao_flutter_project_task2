
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget programsCardModel(String img,String category,String title,int numOfLessons ){
  return SizedBox(
    width: 300,
    height: 280,
    child: Card(
      child: Stack(
        children: [
          Image.asset('assets/images/$img'),
          Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(category,style:const TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,),),
                      const SizedBox(height: 10,),
                      Text(title,style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      const SizedBox(height: 10,),
                      Text("$numOfLessons lessons",style:const TextStyle(color: Colors.grey),)

                    ],
                  ),
                )
                ],
            ),
          ),
        ],
      ),
    ),
  );
}


Widget programsCardModelVerticalScreen(String img,String category,String title,int numOfLessons ){
  return SizedBox(
    width: 250,
    height: 200,
    child: Card(
      child: Stack(
        children: [
          Image.asset('assets/images/$img'),
          Positioned(
            bottom: 4,
            left: 4,
            right: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(category,style:const TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,),),
                      const SizedBox(height: 5,),
                      Text(title,style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      const SizedBox(height: 5,),
                      Text("$numOfLessons lessons",style:const TextStyle(color: Colors.grey),)

                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}