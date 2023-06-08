import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/resources/app_routes.dart';


class OnbordingScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onboarding(),
    );
  }
}
class onboarding extends StatefulWidget {
  @override
  _onboardingState createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int currentPage = 0;
  PageController _pageController = new PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/bg.png'
                    )
                )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 500,
                child: PageView(
                  controller: _pageController,
                  children: [
                    onBoardPage("onBoard1", "Choose Clothes"),
                    onBoardPage("onBoard2", "Schedule Pickup"),
                    onBoardPage("onBoard3", "Get Best Iron Service"),
                    onBoardPage("onBoard2", "Get on Time Delivery"),
                    onBoardPage("onBoard4", "Pay Later"),
                  ],
                  onPageChanged: (value) => {setCurrentPage(value)},
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) => getIndicator(index))
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: InkWell(
                onTap: changePage,
                child: Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(bottom: 30),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          colors: [Color(0xFFF191460), Color(0xFFF191460)],
                          stops: [0,1],
                          begin: Alignment.topCenter
                      )
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              )
          ),

        ],
      ),
    );
  }
  setCurrentPage(int value)
  {
    currentPage = value;
    setState(() {

    });
  }
  AnimatedContainer getIndicator(int pageNo)
  {
    return AnimatedContainer(
        duration: Duration(milliseconds: 100),
        height: 10,
        width: (currentPage == pageNo) ? 20 : 10,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: (currentPage == pageNo) ? Color(0xFFF191460) : Colors.grey
        )
    );
  }
  Column onBoardPage(String img, String title)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(50),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/$img.png')
              )
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(title, style: TextStyle(
              fontSize: 30,
              fontFamily: 'Raleway',
              color: Color(0xFFF191460),
              fontWeight: FontWeight.bold
          ),),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: Text("We care about our costomer first. After submitting order. We will pickup your clothes as you set the time.", style: TextStyle(
              fontSize: 16,
              fontFamily: "Raleway",
              color: Color(0xFFF191460).withOpacity(0.5)
          ),textAlign: TextAlign.center,),
        )
      ],
    );
  }
  void changePage()
  {
    print(currentPage);
    if(currentPage == 4)
      {
           Get.toNamed(RouteNames.homePage);
      }
    else{
      _pageController.animateToPage(currentPage+1, duration: Duration(milliseconds: 200), curve: Curves.linear);
    }
  }
}