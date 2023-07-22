
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget eventsAndExperiencesCardModel(String img,String category,String title,int date,String month, String day){
  return SizedBox(
    width: 300,
    height: 310,
    child: Card(
      child: Stack(
        // fit: StackFit.l,
        children: [
          SizedBox(
            width: 300,
              height:170,child: Image.asset('assets/images/$img')),
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
                      Text(category,style: const TextStyle(color: Colors.blue),),
                      const SizedBox(height: 6,),
                      Text(title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("$date $month, $day",style: const TextStyle(color: Colors.grey),),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 30,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.blue),
                              ),
                              child:  const  Center(child:Text('Book',style: TextStyle(color: Colors.blue),)),
                            ),
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