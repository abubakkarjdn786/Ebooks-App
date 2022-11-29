import 'package:flutter/material.dart';
import 'package:tabbar/NavPages/BooksPage/BookTile.dart';
class TopCharts extends StatefulWidget {
  const TopCharts({Key? key}) : super(key: key);

  @override
  State<TopCharts> createState() => _TopChartsState();
}

class _TopChartsState extends State<TopCharts> {
  String dropdownvalue = 'formats';
  var items = [
    'formats',
    'Books',
    'Audio Books',

  ];
  String dropdownvaluee = 'categories';
  var itemss = [
    'categories',
    'Acedemics',
    'Novels',
    'Science',
    'General',
    'CS',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Top Charts',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w400,fontSize: 20),)),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('The most popular books and audiobooks\nYou will find here for free with single click',style: TextStyle(fontSize: 15),),
              SizedBox(height: 22,),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black54),
                    ),
                    height: 30,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 5),
                        child: DropdownButton(
                          iconSize: 25,
                          // Initial Value
                          value: dropdownvalue,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items,style: TextStyle(fontSize: 15),),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black54),
                    ),
                    height: 30,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 5),
                      child: Center(
                        child: DropdownButton(
                          iconSize: 25,
                          // Initial Value
                          value: dropdownvaluee,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: itemss.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items,style: TextStyle(fontSize: 15),),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvaluee = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 15,),
              BookTiles(path:'lib/assets/images/t1.PNG', name: 'Interaction Design', category: 'Acedemics', author: 'John Wiley',),
              BookTiles(path:'lib/assets/images/t2.PNG', name: 'Software Quality\n Engineering', category: 'Acedemics', author: 'Daniel Galin',),
              BookTiles(path:'lib/assets/images/t3.PNG', name: 'Software Project\n Engineering', category: 'Acedemics', author: 'Unkown',),
              BookTiles(path:'lib/assets/images/t1.PNG', name: 'Interaction Design', category: 'Acedemics', author: 'John Wiley',),
              BookTiles(path:'lib/assets/images/t2.PNG', name: 'Software Quality\n Engineering', category: 'Acedemics', author: 'Daniel Galin',),
              BookTiles(path:'lib/assets/images/t3.PNG', name: 'Software Project\n Engineering', category: 'Acedemics', author: 'Unkown',),
              BookTiles(path:'lib/assets/images/t1.PNG', name: 'Interaction Design', category: 'Acedemics', author: 'John Wiley',),
              BookTiles(path:'lib/assets/images/t2.PNG', name: 'Software Quality\n Engineering', category: 'Acedemics', author: 'Daniel Galin',),
              BookTiles(path:'lib/assets/images/t3.PNG', name: 'Software Project\n Engineering', category: 'Acedemics', author: 'Unkown',),


            ],
          ),
        ),
      ),
    );
  }
}
