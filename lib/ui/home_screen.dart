import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/ui/parties_screen.dart';
import 'package:gym_app/utils/app_colors.dart';
import 'package:gym_app/utils/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.black,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: AppColors.red,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/images/app_side_bar.svg',
                      semanticsLabel: 'vector'),
                  SvgPicture.asset('assets/images/notification_icon.svg',
                      semanticsLabel: 'vector')
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: AppColors.red,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35),
                        )),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                            margin: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi, Arther",
                                  style: AppTheme.getInstance()
                                      .textRegular18BoldWhite(),
                                ),
                                const SizedBox(
                                  height: 04,
                                ),
                                Text(
                                  "Are you ready to start training?",
                                  style: AppTheme.getInstance()
                                      .textRegular18BoldWhite(),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                SizedBox(
                                  // width: 420,
                                  child: TextFormField(
                                    obscureText: true,
                                    style: AppTheme.getInstance().textWhite18,
                                    decoration: InputDecoration(
                                      hintText: "Search",
                                      hintStyle:
                                          AppTheme.getInstance().hintTextGrey14,
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: SvgPicture.asset(
                                            'assets/images/search_icon.svg',
                                            semanticsLabel: 'vector'),
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                        color: AppColors.white,
                                        width: 1,
                                      )),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                        color: AppColors.white,
                                        width: 1,
                                      )),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                        color: AppColors.white,
                                        width: 1,
                                      )),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 200.0,
                          child: ListView.builder(
                            physics: const ClampingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) =>
                                Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              child: Image.asset(
                                "assets/images/carousel${index + 1}.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Training',
                                style: AppTheme.getInstance().titleTextWhite28,
                              ),
                              Text(
                                'See All',
                                style:
                                    AppTheme.getInstance().textRegular18White(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 200.0,
                          child: ListView.builder(
                            physics: const ClampingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) =>
                                GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const PartiesScreen(),
                                  ),
                                );
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                child: Image.asset(
                                  "assets/images/carousel${index + 1}.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Parties',
                                style: AppTheme.getInstance().titleTextWhite28,
                              ),
                              Text(
                                'See All',
                                style:
                                    AppTheme.getInstance().textRegular18White(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 200.0,
                          child: ListView.builder(
                            physics: const ClampingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) =>
                                Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              child: Image.asset(
                                "assets/images/carousel${index + 1}.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Shootings',
                                style: AppTheme.getInstance().titleTextWhite28,
                              ),
                              Text(
                                'See All',
                                style:
                                    AppTheme.getInstance().textRegular18White(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 200.0,
                          child: ListView.builder(
                            physics: const ClampingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) =>
                                Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              child: Image.asset(
                                "assets/images/carousel${index + 1}.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Match Day',
                                style: AppTheme.getInstance().titleTextWhite28,
                              ),
                              Text(
                                'See All',
                                style:
                                    AppTheme.getInstance().textRegular18White(),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 200.0,
                          child: ListView.builder(
                              physics: const ClampingScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) =>
                                  Group24Widget()),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

/*
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      itemBuilder: (BuildContext context, int index) {
        if (index % 2 == 0) {
          return _buildCarousel(context, index ~/ 2);
        } else {
          return const Divider();
        }
      },
    );
  }

  Widget _buildCarousel(BuildContext context, int carouselIndex) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('Carousel $carouselIndex'),
        SizedBox(
          // you may want to use an aspect ratio here for tablet support
          height: 200.0,
          child: PageView.builder(
            // store this controller in a State to save the carousel scroll position
            scrollDirection: Axis.horizontal,
            controller: PageController(viewportFraction: 0.8),
            itemBuilder: (BuildContext context, int itemIndex) {
              return _buildCarouselItem(context, carouselIndex, itemIndex);
            },
          ),
        )
      ],
    );
  }

  Widget _buildCarouselItem(
      BuildContext context, int carouselIndex, int itemIndex) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        child: Image.asset('assets/images/carousel1.png'),
      ),
    );
  }
}
*/

class Group24Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Group24Widget - GROUP
    return Container(
        margin: const EdgeInsets.all(8.0),
        width: 345,
        height: 175,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 345,
                  height: 175,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: Color.fromRGBO(38, 38, 38, 1),
                  ))),
          Positioned(
              top: 141,
              left: 0,
              child: Container(
                  width: 345,
                  height: 34,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: Color.fromRGBO(195, 5, 0, 1),
                  ))),
          const Positioned(
              top: 15,
              left: 15,
              child: Text(
                'Today | 12:30 PM',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          const Positioned(
              top: 149,
              left: 128,
              child: Text(
                'Leagues Name',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 15,
              left: 247,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(22),
                  ),
                  color: Color.fromRGBO(9, 183, 69, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Text(
                      'Upcomming',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 55,
              left: 15,
              child: Transform.rotate(
                angle: -0.000005008956130975318 * (math.pi / 180),
                child: const Divider(
                    color: Color.fromRGBO(29, 29, 29, 1), thickness: 1),
              )),
          Positioned(
              top: 75,
              left: 64,
              child: SizedBox(
                  width: 217,
                  height: 45,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 1,
                        left: 0,
                        child: Container(
                            width: 51,
                            height: 43,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/game_icon1.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 0,
                        left: 139,
                        child: Container(
                            width: 78,
                            height: 45,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/game_icon2.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    const Positioned(
                        top: 12,
                        left: 92,
                        child: Text(
                          'VS',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
        ]));
  }
}
