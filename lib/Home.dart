import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.show_chart_sharp),label:'Top Charts'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label:'Search',),
            BottomNavigationBarItem(icon: Icon(Icons.local_library_outlined),label:'Your Library',),
            BottomNavigationBarItem(icon: Icon(Icons.person),label:'Account',),
        ],

        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 5),
                child: Center(child: Text('E-Libray',style: (TextStyle(color: Colors.blue)),)),
              ),
              Divider(),
            ],
          ),
          bottom: TabBar(tabs: [
            Tab(child: Text('All',style: (TextStyle(color: Colors.blue)),),),
            Tab(child: Text('Books',style: (TextStyle(color: Colors.blue)),),),
            Tab(child: Text('Audio',style: (TextStyle(color: Colors.blue)),),),
            Tab(child: Text('Doc',style: (TextStyle(color: Colors.blue)),),),
          ]),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              
            ],
          ),
        ),
      ),
    );
  }
}
