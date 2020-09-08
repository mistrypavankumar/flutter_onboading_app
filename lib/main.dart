import 'package:flutter/material.dart';
import 'package:flutter_onboading_app/data/data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<SliderModel> mySlides = new List<SliderModel>();
  int slideIndex = 0;
  PageController pageController = new PageController(initialPage: 0);

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    mySlides = getSlides();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xff3C8CE7),
            const Color(0xff00EAFF),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: PageView.builder(
            controller: pageController,
            onPageChanged: (val) {
              setState(() {
                slideIndex = val;
              });
            },
            itemCount: mySlides.length,
            itemBuilder: (context, index) {
              return SliderTile(
                imagePath: mySlides[index].getImageAssetPath(),
                title: mySlides[index].getTitle(),
                desc: mySlides[index].getDesc(),
              );
            },
          ),
        ),
        bottomSheet: slideIndex != mySlides.length - 1
            ? Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(
                      onPressed: () {
                        pageController.animateToPage(mySlides.length - 1,
                            duration: Duration(microseconds: 400),
                            curve: Curves.linear);
                      },
                      splashColor: Colors.blue[50],
                      child: Text(
                        "SKIP",
                        style: TextStyle(
                          color: Color(0xFF0074E4),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          for (int i = 0; i < mySlides.length; i++)
                            slideIndex == i
                                ? _buildPageIndicator(true)
                                : _buildPageIndicator(false),
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        pageController.animateToPage(slideIndex + 1,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.linear);
                      },
                      splashColor: Colors.blue[50],
                      child: Text(
                        "NEXT",
                        style: TextStyle(
                          color: Color(0xFF0074E4),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              )
            : InkWell(
                onTap: () {},
                child: Container(
                  height: 60,
                  color: Colors.purple,
                  alignment: Alignment.center,
                  child: Text(
                    "GET STARTED NOW",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SliderTile extends StatelessWidget {
  String imagePath, title, desc;

  SliderTile({
    this.imagePath,
    this.title,
    this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          SizedBox(
            height: 40,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
