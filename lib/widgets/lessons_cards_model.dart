
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget lessonCardModel(String img,String category,String title,int time ){
  return SizedBox(
    width: 300,
    height: 320,
    child: Card(
      child: Stack(
        children: [
          Image.asset('assets/images/$img'),
          Positioned(
            left: 8,
            right: 8,
            bottom: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(category,style: TextStyle(color: Colors.blue),),
                      const SizedBox(height: 6,),
                      Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      const SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("$time min",style: TextStyle(color: Colors.grey),),
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0,bottom: 30),
                            child: SizedBox(
                              height: 10,
                              width: 10,
                                child: IconButton(onPressed: (){}, icon:const Icon(Icons.lock_outline,color: Colors.black45,size:30,))),
                          )
                        ],
                      )

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