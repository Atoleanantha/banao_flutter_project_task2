
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget programsCardModel(String img,String category,String title,int numOfLessons ){
  return SizedBox(
    width: 300,
    height: 330,
    child: Card(
      child: Stack(
        children: [
          SizedBox(
            width: 242,
              height: 140,
              child: Image.asset('assets/images/$img')),
          Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(category,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,),),
                      const SizedBox(height: 10,),
                      Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      const SizedBox(height: 10,),
                      Text("$numOfLessons lessons",style: TextStyle(color: Colors.grey),)

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