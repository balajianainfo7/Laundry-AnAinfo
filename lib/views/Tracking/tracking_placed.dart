import 'package:flutter/material.dart';
import 'package:another_stepper/another_stepper.dart';
import 'package:get/get.dart';

import '../../resources/app_font.dart';
import '../../resources/app_routes.dart';

class TrackingPlace extends StatefulWidget {
  
  @override
  State<TrackingPlace> createState() => _TrackingPlaceState();
}

class _TrackingPlaceState extends State<TrackingPlace> {
  List<StepperData> stepperData = [
    StepperData(
        title: StepperText(
          "Order Placed",
          textStyle: const TextStyle(
            color: Color(0xFFF191460),
            fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.font
          ),
        ),
        subtitle: StepperText("Your order has been placed", textStyle: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF191460).withOpacity(0.5),
                        fontFamily: AppFont.font)),
        
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Color(0xFFF191460),
              borderRadius: BorderRadius.all(Radius.circular(30))),
              child: const Icon(Icons.looks_one, color: Colors.white),
        )),
    StepperData(
        title: StepperText("Washing", textStyle: TextStyle(fontSize: 18,
        color: Color(0xFFF191460),
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.font)),
        subtitle: StepperText("Your clothes is being washing", textStyle: TextStyle(fontSize: 15,
        color: Color(0xFFF191460).withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.font)),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Color(0xFFF191460),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.looks_two, color: Colors.white),
        )),
    StepperData(
        title: StepperText("On the way", textStyle: TextStyle(fontSize: 18,
        color: Color(0xFFF191460),
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.font)),
        subtitle: StepperText(
            "Our delivery executive is on the way to deliver your item", textStyle: TextStyle(fontSize: 15,
            color: Color(0xFFF191460).withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.font)),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Color(0xFFF191460),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.looks_3, color: Colors.white),
        )),
    StepperData(
        title: StepperText("Delivered"
            , textStyle: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF191460).withOpacity(0.5),
                        fontFamily: AppFont.font)),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Color(0xFFF191460),
              borderRadius: BorderRadius.all(Radius.circular(30))),
              child: const Icon(Icons.favorite_outline_sharp, color: Colors.white),
        )),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                                "Tracking Status",
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Card(
                elevation: 50,
                                    shadowColor: Colors.white,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AnotherStepper(
                    stepperList: stepperData,
                    stepperDirection: Axis.vertical,
                    iconWidth: 40,
                    iconHeight: 40,
                    activeBarColor: Color(0xFFF191460),
                    inActiveBarColor: Color(0xFFF191460).withOpacity(0.5),
                    verticalGap: 30,
                    activeIndex: 1,
                    barThickness: 8,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 80, right: 20),
              child: Align(
                      alignment: Alignment.centerLeft,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                      onTap: () {
                                        Get.toNamed(RouteNames.trackingMap);
                                      },
                                      child: Container(
                        width: 100,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                            colors: [Color(0xFFF191460), Color(0xFFF191460)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Track",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: AppFont.font),
                          ),
                        ),
                                      ),
                                    ),
                                    SizedBox(width: 30,),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                        width: 100,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                            colors: [Color(0xFFF191460), Color(0xFFF191460)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Call now",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: AppFont.font),
                          ),
                        ),
                                      ),
                                    ),
                                    
                                    
                          ],
                        ),
                      )
                                    ),
            ), 
          ],
        ),
      ),
    );
  }
}