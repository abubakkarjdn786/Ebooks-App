import 'package:flutter/material.dart';
import 'AudiableBooks/AuidableBooks.dart';
import 'ReadableBooks/ReadableBooks.dart';
class Homee extends StatefulWidget {
  const Homee({Key? key}) : super(key: key);


  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 5,),
                child: Text('E-Books',style: (TextStyle(color: Colors.blue)),),
              ),
              Divider(),
            ],
          ),
          bottom: TabBar(
              tabs: [
            Tab(child: Text('Readable Books',style: (TextStyle(color: Colors.blue)),),),
            Tab(child: Text('Audible Books',style: (TextStyle(color: Colors.blue)),),),
          ]
          ),
        ),
        body: TabBarView(
          children: [
    ReadableBooks(),
    AudiableBooks()
    ],
          ))
    );
  }
}
