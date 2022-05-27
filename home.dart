// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:eem/Login.dart';
import 'package:eem/ProfilePage.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';

//this is my own package import

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController customController = TextEditingController();
  late ScrollController controller;
  late ScrollController controller2;
  late LinkedScrollControllerGroup linkedcontroller;

  @override
  void initState() {
    super.initState();
    linkedcontroller = LinkedScrollControllerGroup();
    controller = linkedcontroller.addAndGet();
    controller2 = linkedcontroller.addAndGet();
  }

  @override
  void dispose() {
    controller.dispose();
    controller2.dispose();
    super.dispose();
  }

  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            scrollable: true,
            content:SizedBox(
              height:100,
              width: 780.0,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 150),
                      child: Title(color: Colors.white,
                       child: Text("Add Expense", style: TextStyle(fontWeight: FontWeight.bold),)
                       ),
                    ),
              // For Merchant
                    Padding(
                      padding: const EdgeInsets.only(right: 150, top: 10),
                      child: Text("Merchant"),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.grey.withOpacity(0.5),
                        child: TextFormField(
                          controller: customController,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.arrow_drop_down_sharp),
                          ),
                        ),
                      ),
                    ),

                    // For Total
                    Padding(
                      padding: const EdgeInsets.only(right: 150, top: 10),
                      child: Text("Total"),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.grey.withOpacity(0.5),
                        child: TextFormField(
                          controller: customController,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.currency_bitcoin),
                          ),
                        ),
                      ),
                    ),

                    // Date Section
                      Padding(
                      padding: const EdgeInsets.only(right: 150, top: 10),
                      child: Text("date"),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.grey.withOpacity(0.5),
                        child: TextFormField(
                          controller: customController,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.calendar_month_sharp),
                          ),
                        ),
                      ),
                    ),
                  //  For Comment Section
                    Padding(
                      padding: const EdgeInsets.only(right: 150, top: 10),
                      child: Text("Comment"),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.grey.withOpacity(0.5),
                        child: TextFormField(
                          controller: customController,
                          decoration: const InputDecoration(
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: FlatButton(onPressed: (){},
                      color: Colors.grey,
                      minWidth: 30,
                       child: Text("Select receipt")),
                    )
                  ],
                ),
              ),
            ),
            actions: [
              MaterialButton(
                  color: Colors.blue,
                  elevation: 10.0,
                  child: Text("Saved"),
                  onPressed: () {}),
              MaterialButton(
                  color: Colors.white,
                  elevation: 10.0,
                  child: Text("Cancel"),
                  onPressed: () {}),
              MaterialButton(
                  elevation: 10.0, child: Text("Delete"), onPressed: () {}),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        shadowColor: Colors.transparent,
        title: Center(
          child: Text(
            'Expense Manager',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            child: Text(
              'Info',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignIn()));
            },
            icon: Icon(
              Icons.logout_sharp,
              color: Colors.blue,
              size: 27,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            color: Color(0xFFF4F5F7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                      text: "To be reimbursed",
                      style: TextStyle(fontSize: 13.5, color: Colors.black),
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        TextSpan(
                            text: "\n\$2017.68",
                            style: TextStyle(fontSize: 17)),
                      ]),
                ),

                // Filter button
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [Text("Filters"), Icon(Icons.sort)],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(color: Colors.black54, width: 1)),
              color: Colors.white,
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0, -2),
                    spreadRadius: 0,
                    blurRadius: 2),
              ],
            ),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  width: 100,
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text("Date"),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: SingleChildScrollView(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text("Merchant"),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text("Total"),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text("Status"),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text("Comment"),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9,
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20
                  ].map((e) {
                    return Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text("30th Jan"),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                          physics: ClampingScrollPhysics(),
                          controller: controller2,
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              SizedBox(width: 100, child: Text("Hotel")),
                              SizedBox(
                                width: 100,
                                child: Text("\$344.5"),
                              ),
                              SizedBox(
                                width: 100,
                                child: Text("New"),
                              ),
                              SizedBox(
                                width: 100,
                                child: Text("Paid in full"),
                              ),
                            ],
                          ),
                        )),
                      ],
                    );
                  }).toList(),
                );
              }),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(40.0),
        child: FloatingActionButton(
          onPressed: () {
            createAlertDialog(context);
          },
          backgroundColor: Color.fromARGB(255, 221, 8, 8),
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
