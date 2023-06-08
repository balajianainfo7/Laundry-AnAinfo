import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/resources/app_routes.dart';

import '../../resources/app_font.dart';

class ListingPage extends StatelessWidget {
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
  
  int quantity = 0;
  double price = 70.0;

  void incrementQuantity() {
    setState(() {
      quantity++;
      updatePrice();
    });
  }

 void decrementQuantity() {
  setState(() {
      quantity--;
      updatePrice();
    
  });
}

  void updatePrice() {
  setState(() {
    if (quantity == 0 || quantity == 1) {
      price = 70.0; // Set price for quantity 0 or 1
    } else {
      price = 70.0 * quantity; // Set price for quantity greater than 1
    }
  });
}

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
                                "Wash",
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
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
               
               child: SingleChildScrollView(
                physics: ScrollPhysics(),
                 child: Column(
                   children: [
                     Align(
                            alignment: Alignment.topLeft,
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
                          SizedBox(height: 20,),
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
                                "Men's",
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
                                "Women's",
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
                                "Child",
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
                                "Household",
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
               
                                        ListView.builder(
                                           physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                                          itemCount: 4,
                                          itemBuilder:
                                              (BuildContext context, int index) {
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
                                    width: 280,
                                    height: 180,
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height: 140,
                                                  width: 150,
                                              child: ClipRRect(
                                                
                                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                                child: Image(image: AssetImage("assets/images/shop.jpg"),
                                                  fit: BoxFit
                                                                                    .cover,
                                                  height: 140,
                                                  width: 150,
                                                ),
                                              ),
                                            ),
                                          ),
                                           Padding(
                                             padding: const EdgeInsets.only(left: 15),
                                             child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                padding: const EdgeInsets.only(top: 20),
                                                child:  Text(
                                                                            "T-Shirt",
                                                                            style: TextStyle(
                                                                    color: Color(0xFFF191460).withOpacity(0.6),
                                                                    fontSize: 22,
                                                                    fontWeight: FontWeight.bold,
                                                                    fontFamily: AppFont.font),
                                                                          ),
                                                                ),
                                              
                                                              
                                              SizedBox(height: 7,),
                                                 Text(
                                                                              "Rs. ${price.toStringAsFixed(2)}",
                                                                              style: TextStyle(
                                                                      color: Color(0xFFF191460).withOpacity(0.6),
                                                                      fontSize: 15,
                                                                      fontWeight: FontWeight.bold,
                                                                      fontFamily: AppFont.font),
                                                                            ),
                                                
                                                                
                                              
                                          
                                              SizedBox(height: 7,),
                                                 Text(
                                                                              "Men | Wash",
                                                                              style: TextStyle(
                                                                      color: Color(0xFFF191460).withOpacity(0.6),
                                                                      fontSize: 15,
                                                                      fontWeight: FontWeight.bold,
                                                                      fontFamily: AppFont.font),
                                                                            ),
                                                SizedBox(height: 14,),

                                                 Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      height: 40,
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color(0xFFF191460), width: 2), // Customize border color if needed
      ),
       child: IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: decrementQuantity,
                            color: quantity > 0 ? Colors.black : Color(0xFFF191460),
                          ),
      ),
    
    SizedBox(width: 8),
    Text(
      quantity.toString(),
      style: TextStyle(fontSize: 18),
    ),
    SizedBox(width: 8),
    Container(
      height: 40,
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color(0xFFF191460), width: 2), // Customize border color if needed
      ),
      child: IconButton(
            icon: Icon(Icons.add),
            onPressed: incrementQuantity,
      ),
    ),
  ],
),
                                                
                                                                
                                              
                                                                           
                                                ],
                                              ),
                                           ),
                                          
                        
                                        ],
                                      ),
                                    ),
                                  )),
                      ),
                    );
                                              }),
                                        
                   ],
                 ),
               ),
                    
            ),
            Positioned(
              top: 650,
              right: 150,
              child: InkWell(
                                          onTap: () {},
                                          child: Container(
                            width: 100,
                            height: 50,
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
                                "Bucket",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: AppFont.font),
                              ),
                            ),
                                          ),
                                        ),)
          ],
        ),
      ),
    );
  }

  
}