import 'package:flutter/material.dart';
import 'package:tabbar/NavPages/searchpage/SearchClass.dart';
class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Colors.white,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 1),
          height: 35,
          decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(decoration: InputDecoration(
            hintText: 'Search the World\'s most popular books',
            hintStyle: TextStyle(fontSize: 12,color: Colors.black54),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.black54,),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            focusColor: Colors.green,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(bottom: 10),
            filled: true,
            prefixIcon: Icon(Icons.search),
          ),),
        ),),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(padding: EdgeInsets.only(top: 20,bottom: 5,left: 20,right: 20),height: 50,child: Text('Browse All Interests',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),)),
             SizedBox(height: 30,),
              SearchClass( interst: 'Business',),
              SearchClass( interst: 'Career & Growth',),
              SearchClass( interst: 'Finance and money management',),
              SearchClass( interst: 'Politics',),
              SearchClass( interst: 'Sports',),
              SearchClass( interst: 'Games & Activities',),
              SearchClass( interst: 'Comic & Graphic Novels',),
              SearchClass( interst: 'Social Science',),
              SearchClass( interst: 'Travel',),
              SearchClass( interst: 'Philophy',),
              SearchClass( interst: 'Cooking & food',),
              SearchClass( interst: 'Study aids & Test Preparation',),
              SearchClass( interst: 'Language',),
              SearchClass( interst: 'Law',),
              SearchClass( interst: 'Self-Improvement',),
              SearchClass( interst: 'Science & Mathematics',),
              SearchClass( interst: 'Computers',),
              SearchClass( interst: 'History',),
              SearchClass( interst: 'Fiction',),
              SearchClass( interst: 'News ',),
              SearchClass( interst: 'Life Style',),
              SearchClass( interst: 'General Fiction',),
              SearchClass( interst: 'Historical Fiction',),


            ],
          ),
        ),
      ),
    );
  }
}
