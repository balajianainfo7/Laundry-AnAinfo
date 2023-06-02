import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/resources/app_routes.dart';

import '../../resources/app_font.dart';

class PickUpTimePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PickUpTimeWidget(),
    );
  }
}

class PickUpTimeWidget extends StatefulWidget {
  @override
  _PickUpTimeWidgetState createState() => _PickUpTimeWidgetState();
}

class _PickUpTimeWidgetState extends State<PickUpTimeWidget> {
  DateTime? selectedDate;
  String? selectedPickUpTime;
  String? selectedDeliveryTime;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF3F2F9),
        appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.notifications, color: Colors.blueGrey[400],),
              )
      
            ],
            title: Center(
              child: Text(
                                "Pickup Details",
                                style: TextStyle(
                        color: Color(0xFFF191460).withOpacity(0.6),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.font),
                              ),
            ),
            leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Get.back();
              },
             child: Padding(
               padding: const EdgeInsets.all(16.0),
               child: Icon(Icons.keyboard_backspace_sharp, color: Color(0xFFF191460),)
             ),
                                      
            );
            
          },
        ),
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFFF3F2F9), Color(0xFFF3F2F9)]),
                ),
              ),
              // backgroundColor: AppColors.primaryColor,
              elevation: 0,
             
          ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Card(
                                 elevation: 50,
                                    shadowColor: Colors.white,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: SizedBox(
                                  width: 450,
                                  height: 100,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                        padding: const EdgeInsets.only(left: 12, top: 20),
                                        child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                                "Address",
                                style: TextStyle(
                        color: Color(0xFFF191460).withOpacity(0.8),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.font),
                              ),
                    ),
                                      ),

                                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ConstrainedBox(
                          constraints: BoxConstraints.tight(const Size(350, 28)),
                          child: TextFormField(
                            style: TextStyle(color: Color(0xFFF191460).withOpacity(0.6),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.font),
                            decoration: InputDecoration(
                              hintText: "35, Gandhiji Street",
                              hintStyle: TextStyle(color: Color(0xFFF191460).withOpacity(0.4),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.font),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Icon(Icons.edit, color: Color(0xFFF191460),),
                              ),
                            focusColor: Color(0xFFF191460).withOpacity(0.6),
                            
                            ),
                            
                            onSaved: (String? value) {
                              
                            },
                            
                          ),
                        ),
                      ),
                      
                                      ],
                                    ),
                                  ),
                                )),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Text("Pick up Date", style: TextStyle(
                        color: Color(0xFFF191460),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.font),),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    if (selectedDate != null)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedPickUpTime = null;
                            selectedDate = null;
                          });
                        },
                        child: dateWidget(
                          _getFormattedDay(selectedDate!),
                          _getFormattedDate(selectedDate!),
                          true,
                        ),
                      ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPickUpTime = null;
                          selectedDate = DateTime.now();
                        });
                      },
                      child: dateWidget(
                        _getFormattedDay(DateTime.now()),
                        _getFormattedDate(DateTime.now()),
                        selectedDate == null,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPickUpTime = null;
                          selectedDate = DateTime.now().add(Duration(days: 1));
                        });
                      },
                      child: dateWidget(
                        _getFormattedDay(DateTime.now().add(Duration(days: 1))),
                        _getFormattedDate(DateTime.now().add(Duration(days: 1))),
                        selectedDate ==
                            DateTime.now().add(Duration(days: 1)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPickUpTime = null;
                          selectedDate = DateTime.now().add(Duration(days: 2));
                        });
                      },
                      child: dateWidget(
                        _getFormattedDay(DateTime.now().add(Duration(days: 2))),
                        _getFormattedDate(DateTime.now().add(Duration(days: 2))),
                        selectedDate ==
                            DateTime.now().add(Duration(days: 2)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPickUpTime = null;
                          selectedDate = DateTime.now().add(Duration(days: 3));
                        });
                      },
                      child: dateWidget(
                        _getFormattedDay(DateTime.now().add(Duration(days: 3))),
                        _getFormattedDate(DateTime.now().add(Duration(days: 3))),
                        selectedDate ==
                            DateTime.now().add(Duration(days: 3)),
                      ),
                    ),
                    // Add more date widgets here as needed
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(height: 0.5, color: Color(0xFFF191460)),
              SizedBox(height: 15),
              Text("Pick up Time", style: TextStyle(
                        color: Color(0xFFF191460),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.font),),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPickUpTime = "10:00 AM to 12:00 PM";
                        });
                      },
                      child: timeWidget(
                        "10:00 AM to 12:00 PM",
                        selectedPickUpTime == "10:00 AM to 12:00 PM",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPickUpTime = "12:00 PM to 02:00 PM";
                        });
                      },
                      child: timeWidget(
                        "12:00 PM to 02:00 PM",
                        selectedPickUpTime == "12:00 PM to 02:00 PM",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPickUpTime = "02:00 PM to 04:00 PM";
                        });
                      },
                      child: timeWidget(
                        "02:00 PM to 04:00 PM",
                        selectedPickUpTime == "02:00 PM to 04:00 PM",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPickUpTime = "04:00 PM to 06:00 PM";
                        });
                      },
                      child: timeWidget(
                        "04:00 PM to 06:00 PM",
                        selectedPickUpTime == "04:00 PM to 06:00 PM",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
            Container(height: 2, color: Color(0xFFF191460)),
              SizedBox(
                height: 15,
              ),
              Text("Delivery Date", style: TextStyle(
                        color: Color(0xFFF191460),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.font),),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    if (selectedDate != null)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedDeliveryTime = null;
                            selectedDate = null;
                          });
                        },
                        child: dateWidget(
                          _getFormattedDay(selectedDate!),
                          _getFormattedDate(selectedDate!),
                          true,
                        ),
                      ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDeliveryTime = null;
                          selectedDate = DateTime.now();
                        });
                      },
                      child: dateWidget(
                        _getFormattedDay(DateTime.now()),
                        _getFormattedDate(DateTime.now()),
                        selectedDate == null,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDeliveryTime = null;
                          selectedDate = DateTime.now().add(Duration(days: 1));
                        });
                      },
                      child: dateWidget(
                        _getFormattedDay(DateTime.now().add(Duration(days: 1))),
                        _getFormattedDate(DateTime.now().add(Duration(days: 1))),
                        selectedDate ==
                            DateTime.now().add(Duration(days: 1)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDeliveryTime = null;
                          selectedDate = DateTime.now().add(Duration(days: 2));
                        });
                      },
                      child: dateWidget(
                        _getFormattedDay(DateTime.now().add(Duration(days: 2))),
                        _getFormattedDate(DateTime.now().add(Duration(days: 2))),
                        selectedDate ==
                            DateTime.now().add(Duration(days: 2)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDeliveryTime = null;
                          selectedDate = DateTime.now().add(Duration(days: 3));
                        });
                      },
                      child: dateWidget(
                        _getFormattedDay(DateTime.now().add(Duration(days: 3))),
                        _getFormattedDate(DateTime.now().add(Duration(days: 3))),
                        selectedDate ==
                            DateTime.now().add(Duration(days: 3)),
                      ),
                    ),
                    // Add more date widgets here as needed
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(height: 0.5, color: Color(0xFFF191460)),
              SizedBox(height: 15),
              Text("Delivery Time", style: TextStyle(
                        color: Color(0xFFF191460),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.font),),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDeliveryTime = "10:00 AM to 12:00 PM";
                        });
                      },
                      child: timeWidget(
                        "10:00 AM to 12:00 PM",
                        selectedDeliveryTime == "10:00 AM to 12:00 PM",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDeliveryTime = "12:00 PM to 02:00 PM";
                        });
                      },
                      child: timeWidget(
                        "12:00 PM to 02:00 PM",
                        selectedDeliveryTime == "12:00 PM to 02:00 PM",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDeliveryTime = "02:00 PM to 04:00 PM";
                        });
                      },
                      child: timeWidget(
                        "02:00 PM to 04:00 PM",
                        selectedDeliveryTime == "02:00 PM to 04:00 PM",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDeliveryTime = "04:00 PM to 06:00 PM";
                        });
                      },
                      child: timeWidget(
                        "04:00 PM to 06:00 PM",
                        selectedDeliveryTime == "04:00 PM to 06:00 PM",
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
    
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(RouteNames.trackingPlace);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    gradient: LinearGradient(
                      colors: [Color(0xFFF191460), Color(0xFFF191460)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Place Order",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.font),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String _getFormattedDay(DateTime dateTime) {
    return _getWeekdayName(dateTime.weekday);
  }

  String _getWeekdayName(int weekday) {
    const weekdayNames = [
      "", // Dummy value for index 0
      "Mon",
      "Tues",
      "Wed",
      "Thurs",
      "Fri",
      "Sat",
      "Sun",
    ];
    return weekdayNames[weekday];
  }

  String _getFormattedDate(DateTime dateTime) {
    return "${dateTime.day} ${_getMonthName(dateTime.month)}";
  }

  String _getMonthName(int month) {
    const monthNames = [
      "", // Dummy value for index 0
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec",
    ];
    return monthNames[month];
  }

  Widget dateWidget(String day, String date, bool isActive) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: isActive ? Color(0xFFF191460) : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            day,
            style: TextStyle(
              color: isActive ? Colors.white : Color(0xFFF191460),
              fontSize: 16,
              fontWeight: FontWeight.bold,
                    fontFamily: AppFont.font
            ),
          ),
          SizedBox(height: 5),
          Text(
            date,
            style: TextStyle(
              color: isActive ? Colors.white : Color(0xFFF191460),
              fontSize: 16,
              fontWeight: FontWeight.bold,
                    fontFamily: AppFont.font
            ),
          ),
        ],
      ),
    );
  }

  Widget timeWidget(String time, bool isActive) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: isActive ? Color(0xFFF191460) : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        time,
        style: TextStyle(
          color: isActive ? Colors.white : Color(0xFFF191460),
          fontSize: 16,
          fontWeight: FontWeight.bold,
                    fontFamily: AppFont.font
        ),
      ),
    );
  }
}