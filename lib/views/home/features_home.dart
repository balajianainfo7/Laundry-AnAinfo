import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/views/Detailed/detailed_pickup.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_dimen.dart';
import '../../resources/app_font.dart';
import '../../resources/app_routes.dart';


class FeaturesHome extends StatefulWidget {
  @override
  FeaturesHomeState createState() => FeaturesHomeState();
}


class FeaturesHomeState extends State<FeaturesHome> {

    buildNavigationDrawer(context) {
    return Drawer(
      
        backgroundColor: Color(0xFFF191460),
        
        child: ListView(

            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 180,
                child:  
                   DrawerHeader(
                    
                      decoration: BoxDecoration(
                        color: Color(0xFFF191460),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(29),
                                      child: Image(
                                        image: NetworkImage(
                                            "https://lh4.googleusercontent.com/-MLpyhA1NOuc/AAAAAAAAAAI/AAAAAAAAAAA/74wL-1xyWKU/s44-p-k-no-ns-nd/photo.jpg"),
                                        fit: BoxFit.cover,
                                        width: 140,
                                        height: 170,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Balaji',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Raleway",
                                          color: Colors.white)),
                                  
                                  
                                
                                  ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [],
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                ),
              
              Container(
                height: 3,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 25,
                ),
                title: const Text(
                  'Dashboard',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                onTap: () {
                  
                },
              ),
              Divider(
                color: Colors.white,
                thickness: 0.5,
              ),
              ListTile(
                leading: Icon(
                  Icons.photo,
                  color: Colors.white,
                  size: 25,
                ),
                title: const Text(
                  'Orders',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                onTap: () {
                  Get.back();
                },
              ),
              Divider(
                color: Colors.white,
                thickness: 0.5,
              ),
              ListTile(
                leading: Icon(
                  Icons.chat,
                  color: Colors.white,
                  size: 25,
                ),
                title: const Text(
                  'Chat',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                onTap: () {
                  Get.back();
                },
              ),
              Divider(
                color: Colors.white,
                thickness: 0.5,
              ),
              ListTile(
                leading: Icon(
                  Icons.send,
                  color: Colors.white,
                  size: 25,
                ),
                title: const Text(
                  'Nearby Stores',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                onTap: () {
                  Get.back();
                },
              ),
              Divider(
                color: Colors.white,
                thickness: 0.5,
              ),
              ListTile(
                leading: Icon(
                  Icons.person_add,
                  color: Colors.white,
                  size: 25,
                ),
                title: const Text(
                  'Features',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                onTap: () {
                  Get.back();
                },
              ),
               Divider(
                color: Colors.white,
                thickness: 0.5,
              ),
              ListTile(
                leading: Icon(
                  Icons.list,
                  color: Colors.white,
                  size: 25,
                ),
                title: Text(
                  'Tracking',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                onTap: () {
                  Get.back();
                },
              ),
             
              Divider(
                color: Colors.white,
                thickness: 0.5,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 25,
                ),
                title: const Text(
                  'Logout',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                onTap: () {
                 
                  // Get.toNamed(RouteNames.login);
                  Get.back();
                },  
              ),
              Divider(
                color: Colors.white,
                thickness: 0.5,
              ),
            ])
            
            );
  
  }

  double rating = 3;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications, color: Colors.blueGrey[400],),
            )
    
          ],
          leading: Builder(
        builder: (BuildContext context) {
          return GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
           child: Padding(
             padding: const EdgeInsets.all(16.0),
             child: ClipRRect(
                                          borderRadius: BorderRadius.circular(50),
                                          child: Image(
                                            image: NetworkImage(
                                                "https://lh4.googleusercontent.com/-MLpyhA1NOuc/AAAAAAAAAAI/AAAAAAAAAAA/74wL-1xyWKU/s44-p-k-no-ns-nd/photo.jpg"),
                                            fit: BoxFit.contain,
                                            width: 10,
                                            height: 10,
                                          ),
                                        ),
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
        drawer: buildNavigationDrawer(context),
        backgroundColor: Color(0xFFF3F2F9),
        body:  SingleChildScrollView(
           physics: ScrollPhysics(),
          
            padding: EdgeInsets.symmetric(horizontal: 19,vertical: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                            "Hey, AnAinfo",
                            style: TextStyle(
                    color: Color(0xFFF191460).withOpacity(0.5),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppFont.font),
                          ),
                ),
                SizedBox(height:15),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                            "Welcome Back",
                            style: TextStyle(
                    color: Color(0xFFF191460).withOpacity(0.6),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppFont.font),
                          ),
                ),
                SizedBox(height:15),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                            width: 350,
                            height: 40,
                            decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.circular(10)),
                            child: Center(
                  child: TextField(
                                        
                                         
                                        decoration: InputDecoration(
                                            prefixIcon: const Icon(
                                              Icons.search,
                                              color: Colors.grey,
                                            ),
                                            suffixIcon: IconButton(
                                              icon: const Icon(Icons.clear),
                                              onPressed: () => {},
                                            ),
                                            hintText: 'Search for a laundry',
                                            hintStyle: TextStyle(color: Color(0xFFF191460).withOpacity(0.4), fontWeight: FontWeight.bold, fontFamily: AppFont.font),
                                            border: InputBorder.none),
                                      ),
                            ),
                          ),
                ),
                SizedBox(height:15),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                            "Services",
                            style: TextStyle(
                    color: Color(0xFFF191460),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppFont.font),
                          ),
                ),
                SizedBox(height:20),
          
                
                Align(
                  alignment: Alignment.centerLeft,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      
                      
                    children: [
                      buildItemMenu("assets/images/washer.png", "Wash"),
                      buildItemMenu("assets/images/deep.png", "Iron"),
                      buildItemMenu("assets/images/dry.png", "Dry Wash"),
                    buildItemMenu("assets/images/formal.png", "Straching"),
                    buildItemMenu("assets/images/deep.png", "Wash & Fold"),
                    buildItemMenu("assets/images/powder.png", "Powder Wash"),
                    ],),
                  ),
                ),
                
               
                SizedBox(height:20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                                "Our Experties",
                                style: TextStyle(
                        color: Color(0xFFF191460),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.font),
                              ),
                              SizedBox(width: 180,),
                              Text(
                                "view all",
                                style: TextStyle(
                        color: Color(0xFFF191460).withOpacity(0.4),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.font),
                              ),
                    ],
                  ),
                ),
                   
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
        child: Align(
          child: Row(
            children: List.generate(5, (index) {
              return Padding(
                padding: EdgeInsets.only(top: 35, right: 12),
                child: InkWell(
                  onTap: (){
                     Get.toNamed(RouteNames.detailedPage);
                  },
                  child: Card(
                             elevation: 50,
                                shadowColor: Colors.white,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: SizedBox(
                              width: 200,
                              height: 300,
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 180,
                                            width: 190,
                                        child: ClipRRect(
                                          
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                          child: Image(image: AssetImage("assets/images/shop.jpg"),
                                            fit: BoxFit
                                                                              .cover,
                                            height: 180,
                                            width: 190,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                              "AnAinfo Laundry",
                              style: TextStyle(
                      color: Color(0xFFF191460).withOpacity(0.6),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: AppFont.font),
                            ),
                  ),
                                    ),
                
                                    SizedBox(height: 5,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                              "Cleaning",
                              style: TextStyle(
                      color: Color(0xFFF191460).withOpacity(0.6),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: AppFont.font),
                            ),
                  ),
                                    ),
                              SizedBox(height: 5,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Row(
                                        children: _buildRatingStars(),
                                      ),
                                    ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Row(
                                  children: [
                                    Icon(Icons.timer_outlined, color: Color(0xFFF191460).withOpacity(0.4),size: 18,),
                                    SizedBox(width: 5,),
                                    Text(
                                "9.00 AM - 4.00 PM",
                                style: TextStyle(
                      color: Color(0xFFF191460).withOpacity(0.6),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: AppFont.font),
                            ),
                            
                                  ],
                                ),
                              )
                  
                                  ],
                                ),
                              ),
                            )),
                ),
              );
            }),
          ),
        ),
        
                    ),
                  // ListView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //     physics: NeverScrollableScrollPhysics(),
                  //     shrinkWrap: true,
                  //                 itemCount: 2,
                  //     itemBuilder: (BuildContext context, int index){
                        
                  //     return InkWell(
                  //       onTap: (){
                  
                  //       },
                  //       child: Card(),
                  //     );
                  //   }),
                  
                
                
              ],
            ),
          ),
        ),
      
    );
  }

  Widget buildItemMenu(String image,String text) {
    return GestureDetector(
      onTap: (){
        
       Get.toNamed(RouteNames.listingPage);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            boxShadow:[
              BoxShadow(
                color: Colors.grey,
                blurRadius: 7,
                offset: Offset(0, 2), // changes position of shadow
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)
          ),
                    child: Column(
                      children: [
                        ClipRect(child: Image.asset(image,width: 80,height: 50,fit: BoxFit.cover,)),
                        SizedBox(height: 15,),
                        Text(text,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFFF191460).withOpacity(0.4), fontFamily: AppFont.font),),
                      ],
                    ),
                  ),
      ),
    );
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