import 'package:flutter/material.dart';
class AudiableBooks extends StatelessWidget {
  const AudiableBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            TextButtons(text: 'Audaibale Best', btntxt: 'More',),
          ]),
    );
  }
}


class TextButtons extends StatelessWidget {
  const TextButtons({Key? key, required this.text,  required this.btntxt}) : super(key: key);
  final String text;
  final String btntxt;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Container(child: Row(
            children: [
              Text(btntxt,style: TextStyle(color: Colors.red,fontWeight: FontWeight.w600,fontSize: 15),),
              Icon(Icons.arrow_forward_ios,size: 18,color: Colors.red,),

            ],
          ),),

        ],
      ),
    );
  }
}

