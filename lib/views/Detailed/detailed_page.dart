import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/resources/app_routes.dart';

import '../../resources/app_font.dart';

class DetailedPage extends StatefulWidget {
  @override
  DetailedPageState createState() => DetailedPageState();
}
class DetailedPageState extends State<DetailedPage> {

  double rating = 3;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF3F2F9),
        // appBar: AppBar(
        //     actions: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Icon(Icons.menu, color: Colors.blueGrey[400],),
        //       )
      
        //     ],
        //     title: Center(
        //       child: Text(
        //                         "AnAinfo Laundry",
        //                         style: TextStyle(
        //                 color: Color(0xFFF191460).withOpacity(0.6),
        //                 fontSize: 18,
        //                 fontWeight: FontWeight.bold,
        //                 fontFamily: AppFont.font),
        //                       ),
        //     ),
        //     leading: Builder(
        //   builder: (BuildContext context) {
        //     return GestureDetector(
        //       onTap: () {
        //         Get.back();
        //       },
        //      child: Padding(
        //        padding: const EdgeInsets.all(16.0),
        //        child: Icon(Icons.keyboard_backspace_sharp, color: Color(0xFFF191460),)
        //      ),
                                      
        //     );
            
        //   },
        // ),
        //       flexibleSpace: Container(
        //         decoration: BoxDecoration(
        //           gradient: LinearGradient(
        //               begin: Alignment.centerLeft,
        //               end: Alignment.centerRight,
        //               colors: [Color(0xFFF3F2F9), Color(0xFFF3F2F9)]),
        //         ),
        //       ),
        //       // backgroundColor: AppColors.primaryColor,
        //       elevation: 0,
             
        //   ),
        body: Stack(
            children: <Widget>[
              
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*4/7,
                decoration: BoxDecoration(
                  
                ),
                child: Column(
                  children: [
                    Container(
                      child: ClipRRect(
                        
                        child: Image(image: AssetImage("assets/images/shop.jpg"),),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3.3),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Color(0xFFF3F2F9)
                ),
                child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 30),
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      
                      children: [
                            Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                                  "AnAinfo Laundry",
                                  style: TextStyle(
                          color: Color(0xFFF191460),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: AppFont.font),
                                ),
                                  ),       
                                  Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: _buildRatingStars(),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: [
                                              Icon(Icons.location_on_outlined, size: 18, color: Color(0xFFF191460).withOpacity(0.5),),
                                              SizedBox(width: 5,),
                                              Text(
                                                                        "35, Gandhiji Street, Thirumanagalam",
                                                                        style: TextStyle(
                                                                color: Color(0xFFF191460).withOpacity(0.5),
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: AppFont.font),
                                                                      ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    SizedBox(height: 20,),
                                      Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                                  "About",
                                  style: TextStyle(
                          color: Color(0xFFF191460),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: AppFont.font),
                                ),
                                  ),       
                  
                                  Padding(
                                        padding: const EdgeInsets.only(top: 10, right: 30),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: 
                                             Text(
                                                                        "We care about our costomer first. After submitting order. We will pickup your clothes as you set the time.",
                                                                        style: TextStyle(
                                                                color: Color(0xFFF191460).withOpacity(0.5),
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: AppFont.font),
                                                                      ),
                                           
                                        ),
                                      ),
                  
                                      SizedBox(height: 20,),
                                      Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                                  "Specialities",
                                  style: TextStyle(
                          color: Color(0xFFF191460),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: AppFont.font),
                                ),
                                  ), 
                  
                                  SizedBox(height: 15,),
                                      Align(
                    alignment: Alignment.centerLeft,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                          "Laundry",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: AppFont.font),
                        ),
                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
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
                          "Dry Wash",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: AppFont.font),
                        ),
                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
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
                          "Iron",
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
                      SizedBox(height: 20,),
                                      Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                                  "Working Days",
                                  style: TextStyle(
                          color: Color(0xFFF191460),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: AppFont.font),
                                ),
                                  ), 
                    SizedBox(height: 15,),
                                      Align(
                    alignment: Alignment.centerLeft,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                                    onTap: () {},
                                    child: Container(
                      width: 80,
                      padding: EdgeInsets.symmetric(vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                          colors: [Color(0xFFF191460), Color(0xFFF191460)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child:  Column(
                          children: [
                            Text(
                              "Mon",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.font),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "10.00 AM",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.font),
                            ),
                            Text(
                              "to",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.font),
                            ),
                            Text(
                              "05.00 PM",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.font),
                            ),
                          ],
                        ),
                      
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                      width: 80,
                      padding: EdgeInsets.symmetric(vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                          colors: [Color(0xFFF191460), Color(0xFFF191460)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child:  Column(
                          children: [
                            Text(
                              "Tues",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.font),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "10.00 AM",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.font),
                            ),
                            Text(
                              "to",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.font),
                            ),
                            Text(
                              "05.00 PM",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.font),
                            ),
                          ],
                        ),
                      
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                      width: 80,
                      padding: EdgeInsets.symmetric(vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                          colors: [Color(0xFFF191460), Color(0xFFF191460)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child:  Column(
                          children: [
                            Text(
                              "Thurs",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.font),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "10.00 AM",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.font),
                            ),
                            Text(
                              "to",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.font),
                            ),
                            Text(
                              "05.00 PM",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.font),
                            ),
                          ],
                        ),
                      
                                    ),
                                  ),

                                  SizedBox(width: 10,),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                      width: 80,
                      padding: EdgeInsets.symmetric(vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                          colors: [Color(0xFFF191460), Color(0xFFF191460)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child:  Column(
                          children: [
                            Text(
                              "Fri",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.font),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "10.00 AM",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.font),
                            ),
                            Text(
                              "to",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.font),
                            ),
                            Text(
                              "05.00 PM",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.font),
                            ),
                          ],
                        ),
                      
                                    ),
                                  ),
                                  
                        ],
                      ),
                    )
                                  ), 

                                  SizedBox(height: 15,),

                                  Padding(
                                    padding: const EdgeInsets.only(right: 30),
                                    child: InkWell(
                onTap: () {
                  Get.toNamed(RouteNames.detailedPickup);
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
                      "Schedule a pickup",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.font),
                    ),
                  ),
                ),
              ),
                                  )

                                  
                      ],
                    ),
                  ),
                  // margin: EdgeInsets.only(bottom: 100),
           ),
              ),
              ),
             
                Positioned(
              top: 5,
              left: 5,
              child: Row(
                children: [
                  IconButton(
                    onPressed:()=> Get.back(),
                                icon: Icon(Icons.arrow_back,
                    color: Color(0xFFF191460),
                    size: 25,),
                  ),
                   
                ],
              ),
            ), 
        
              
            ],
          ),));
  }

  List<Widget> _buildRatingStars() {
    List<Widget> stars = [];
    final int maxRating = 5;

    for (int i = 1; i <= maxRating; i++) {
      Icon star;
      if (i <= rating) {
        star = Icon(
          Icons.star,
          size: 18,
          color: Color(0xFFF191460).withOpacity(0.4),
        );
      } else if (i - rating == 0.5) {
        star = Icon(
          Icons.star_half,
          size: 18,
          color: Color(0xFFF191460),
        );
      } else {
        star = Icon(
          Icons.star_border,
          size: 18,
          color: Color(0xFFF191460).withOpacity(0.6),
        );
      }

      stars.add(GestureDetector(
        onTap: () {
          setState(() {
            rating = i.toDouble();
          });
        },
        child: star,
      ));
    }

    return stars;
  }
}

