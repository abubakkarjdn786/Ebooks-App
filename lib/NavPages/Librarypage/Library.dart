import 'package:flutter/material.dart';
import 'package:tabbar/NavPages/Librarypage/History.dart';
import 'package:tabbar/NavPages/Librarypage/NoteBooks.dart';
import 'package:tabbar/NavPages/Librarypage/Tiles.dart';

import 'Following.dart';
import 'Lists.dart';
class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _SavedState();
}

class _SavedState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar:AppBar(
          toolbarHeight: 65,
            backgroundColor: Colors.white,
            title: Text('Saved',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w400),),
            actions: [
              IconButton(onPressed: null, icon: Icon(Icons.search,color: Colors.black,size: 30,)),
              IconButton(onPressed: null, icon: Icon(Icons.edit,color: Colors.black,size: 30,)),
            ],
            bottom: TabBar(
              isScrollable: true,
                  indicatorColor: Colors.blue,
                  unselectedLabelColor: Colors.black54,
                  labelColor: Colors.blue,
                  tabs: [
                    Tab(child: Text('Titles',style: (TextStyle(fontSize: 17,fontWeight: FontWeight.w400)),),),
                    Tab(child: Text('Following',style: (TextStyle(fontSize: 17,fontWeight: FontWeight.w400)),),),
                    Tab(child: Text('Lists',style: (TextStyle(fontSize: 17,fontWeight: FontWeight.w400)),),),
                    Tab(child: Text('NoteBooks',style: (TextStyle(fontSize: 17,fontWeight: FontWeight.w400)),),),
                    Tab(child: Text('History',style: (TextStyle(fontSize: 17,fontWeight: FontWeight.w400)),),),

              ]),
            ),
        body: TabBarView(
          children: [
            Tiles(),
            Following(),
            Lists(),
            NoteBooks(),
            History(),
          ],
        ),
      ),
    );
  }
}
