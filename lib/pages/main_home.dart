// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: Column(
          children: [
            Image.asset(
              "assets/images/modern.jpeg",
              height: 300,
              alignment: Alignment.topRight,
              width: double.infinity,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "One Stop Solution For Your Career",
                style: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                "Your Dream Career Fulfilled",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                "Our Partner",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                children: [
                  CarouselSlider(
                    items: [
                      //1st Image of Slider
                      Image.asset(
                        "assets/images/img1.png",
                        height: 100,
                        width: 100,
                      ),
                      //2nd Image of Slider
                      Image.asset(
                        "assets/images/img2.png",
                        height: 100,
                        width: 100,
                      ),
                      Image.asset(
                        "assets/images/img3.png",
                        height: 100,
                        width: 100,
                      ),
                      Image.asset(
                        "assets/images/img4.png",
                        height: 100,
                        width: 100,
                      ),
                      Image.asset(
                        "assets/images/img5.png",
                        height: 100,
                        width: 100,
                      ),
                    ],

                    //Slider Container properties
                    options: CarouselOptions(
                      height: 100.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      // aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.linear,
                      enableInfiniteScroll: true,
                      reverse: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 600),
                      viewportFraction: 0.3,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                "We are a career launcher",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "We provide Manpower Consultant Services to our valued clients.",
                style: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                  // border: BoxBorder()
                  ),
              child: Column(
                children: [
                  Icon(
                    Icons.send,
                    color: Colors.deepOrangeAccent,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "Airport Management Courses",
                      style: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                    child: Text(
                      "Airport Management courses are related to airline management and administrative roles that manage various airport operations. You will be taught skills, knowledge along with practical exposure for the same.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                  // border: BoxBorder()
                  ),
              child: Column(
                children: [
                  Icon(
                    Icons.money,
                    color: Colors.deepOrangeAccent,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "Bank Job Courses",
                      style: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                    child: Text(
                      "There are various job positions within bank institutions. Positions range from customer service positions (bank teller) to mid-management positions (internal auditor, data processing officer) to executive-level positions (loan officer, branch manager). These key positions can be found in any bank organizational structure.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                  // border: BoxBorder()
                  ),
              child: Column(
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.deepOrangeAccent,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "Telecalling Courses",
                      style: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                    child: Text(
                      "Build communication skills and top call and email practices which result in the best amount of sales for you. Get to know about customer support in major industries of banking, finance, edtech and ecommerce.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
