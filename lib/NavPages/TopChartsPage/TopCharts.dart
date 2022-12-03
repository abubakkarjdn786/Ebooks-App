import 'package:flutter/material.dart';
import 'package:tabbar/NavPages/BooksPage/BookTile.dart';

import 'SelectCategory.dart';

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
        title: Center(
            child: Text(
          'Top Charts',
          style: TextStyle(
              color: Colors.black54, fontWeight: FontWeight.w400, fontSize: 20),
        )),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'The most popular books and audiobooks\nYou will find here for free with single click',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black54),
                    ),
                    height: 35,
                    child: Center(
                      child: Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: TextButton(
                            child: Row(
                              children: [
                                Text('Formats',style: TextStyle(color: Colors.black),),
                                Icon(Icons.keyboard_arrow_down_outlined,color: Colors.black,)
                              ],
                            ),
                            onPressed: () {
                              showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(30),
                                  )),
                                  context: context,
                                  builder: (context) => Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Formats',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22),
                                                ),
                                                IconButton(
                                                  onPressed: (){
                                                    Navigator.pop(context);
                                                  },
                                                  icon: Icon(
                                                    Icons.close,
                                                    size: 22,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Container(decoration: BoxDecoration(
                                              color: Colors.green[700],
                                              borderRadius: BorderRadius.circular(5),
                                            ),

                                                width: 500,
                                                height: 40,
                                                child: ElevatedButton(
                                                  onPressed: null,
                                                  child: Text(
                                                    'Books',
                                                    style: TextStyle(
                                                        color: Colors.white70,
                                                        fontSize: 18),
                                                  ),
                                                )),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.green[700],
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                width: 500,
                                                height: 40,
                                                child: ElevatedButton(
                                                  onPressed: null,
                                                  child: Text(
                                                    'Audio Books',
                                                    style: TextStyle(
                                                        color: Colors.white70,
                                                        fontSize: 18),
                                                  ),
                                                )),
                                            SizedBox(
                                              height: 20,
                                            )
                                          ],
                                        ),
                                      ));
                            },
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black54),
                    ),
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Center(
                          child: TextButton(
                        child: Row(
                          children: [
                            Text('Categories',style: TextStyle(color: Colors.black),),
                            Icon(Icons.keyboard_arrow_down_outlined,color: Colors.black,),
                          ],
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30),
                              )),
                              context: context,
                              builder: (context) => Column(
                                mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                          children: [
                                            Text(
                                              'Categories',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight:
                                                  FontWeight.bold,
                                                  fontSize: 22),
                                            ),
                                            IconButton(
                                              onPressed: (){
                                                Navigator.pop(context);
                                              },
                                              icon: Icon(
                                                Icons.close,
                                                size: 22,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Wrap(
                                        spacing: 10,
                                        runSpacing: 10,
                                        children: [
                                          SelectCategoryButton(Txt: 'Business',),
                                          SelectCategoryButton(Txt: 'Politics'),
                                          SelectCategoryButton(Txt: 'Education'),
                                          SelectCategoryButton(Txt: 'Business',),
                                          SelectCategoryButton(Txt: 'Politics'),
                                          SelectCategoryButton(Txt: 'Education'),
                                          SelectCategoryButton(Txt: 'Business',),
                                          SelectCategoryButton(Txt: 'Politics'),
                                          SelectCategoryButton(Txt: 'Education'),
                                          SelectCategoryButton(Txt: 'Business',),
                                          SelectCategoryButton(Txt: 'Politics'),
                                          SelectCategoryButton(Txt: 'Education'),
                                          SelectCategoryButton(Txt: 'Business',),
                                          SelectCategoryButton(Txt: 'Politics'),
                                          SelectCategoryButton(Txt: 'Education'),

                                        ],
                                      ),
                                      SizedBox(height: 30,),
                                    ],
                                  ));
                        },
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              BookTiles(
                path: 'lib/assets/images/t1.PNG',
                name: 'Interaction Design',
                category: 'Acedemics',
                author: 'John Wiley',
              ),
              BookTiles(
                path: 'lib/assets/images/t2.PNG',
                name: 'Software Quality\n Engineering',
                category: 'Acedemics',
                author: 'Daniel Galin',
              ),
              BookTiles(
                path: 'lib/assets/images/t3.PNG',
                name: 'Software Project\n Engineering',
                category: 'Acedemics',
                author: 'Unkown',
              ),
              BookTiles(
                path: 'lib/assets/images/t1.PNG',
                name: 'Interaction Design',
                category: 'Acedemics',
                author: 'John Wiley',
              ),
              BookTiles(
                path: 'lib/assets/images/t2.PNG',
                name: 'Software Quality\n Engineering',
                category: 'Acedemics',
                author: 'Daniel Galin',
              ),
              BookTiles(
                path: 'lib/assets/images/t3.PNG',
                name: 'Software Project\n Engineering',
                category: 'Acedemics',
                author: 'Unkown',
              ),
              BookTiles(
                path: 'lib/assets/images/t1.PNG',
                name: 'Interaction Design',
                category: 'Acedemics',
                author: 'John Wiley',
              ),
              BookTiles(
                path: 'lib/assets/images/t2.PNG',
                name: 'Software Quality\n Engineering',
                category: 'Acedemics',
                author: 'Daniel Galin',
              ),
              BookTiles(
                path: 'lib/assets/images/t3.PNG',
                name: 'Software Project\n Engineering',
                category: 'Acedemics',
                author: 'Unkown',
              ),
            ],
          ),
        ),
      ),
    );
  }
}