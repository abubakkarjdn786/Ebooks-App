import 'package:flutter/material.dart';
import 'package:tabbar/NavPages/TopChartsPage/Rating.dart';
class BookTiles extends StatelessWidget {
  const BookTiles({Key? key, required this.path, required this.name, required this.category, required this.author}) : super(key: key);
  final String path;
  final String name;
  final String category;
  final String author;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image(
            image: AssetImage(
             path,
            ),
            width: 80,
            height: 130,
          ),
          SizedBox(width: 17,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              SizedBox(height: 8,),
              Text(category,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
              SizedBox(height: 8,),
              Text(author,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),
              SizedBox(height: 8,),
              Rating(),
            ],
          ),
          SizedBox(width: 30,),
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Column(
              children: [
                Icon(Icons.bookmark_border),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
