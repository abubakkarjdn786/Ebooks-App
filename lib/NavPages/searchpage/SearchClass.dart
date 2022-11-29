import 'package:flutter/material.dart';
class SearchClass extends StatelessWidget {
  const SearchClass({Key? key, required this.interst}) : super(key: key);
final String interst;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20,right: 20),
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(interst,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 18),),
          ),
          Divider(height: 10,thickness: 2,),
        ],
      ),
    );
  }
}
