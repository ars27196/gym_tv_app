import 'package:flutter/material.dart';
import 'package:gym_app/utils/app_colors.dart';
import 'package:gym_app/utils/app_theme.dart';

class PartiesScreen extends StatelessWidget {
  const PartiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: AppColors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                'Training',
                style: AppTheme.getInstance().textWhite18,
              ),)
            ],
          ),
          Container(
              width: 345,
              height: 50,

              child: Stack(
                  children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 345,
                            height: 50,
                            decoration: const BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                              color : Color.fromRGBO(38, 38, 38, 1),
                            )
                        )
                    ),Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 172,
                            height: 50,
                            decoration: const BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(0),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(0),
                              ),
                              color : Color.fromRGBO(255, 7, 0, 1),
                            )
                        )
                    ),const Positioned(
                        top: 13,
                        left: 54,
                        child: Text('Classes', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),)
                    ),const Positioned(
                        top: 13,
                        left: 231,
                        child: Text('Private', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),)
                    ),
                  ]
              )
          ),
          ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) =>
                  const Group43Widget()),
        ],
      ),
    );
  }
}

class Group43Widget extends StatelessWidget {
  const Group43Widget({super.key});

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Group43Widget - GROUP
    return Container(
      margin: const EdgeInsets.all(8.0),
        height: 115,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                  width: 345,
                  height: 115,
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
              top: 10,
              left: 10,

              child: Container(
                  width: 115,
                  height: 100,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: Color.fromRGBO(217, 217, 217, 1),
                    image: DecorationImage(
                        image: AssetImage('assets/images/sample_icon.png'),
                        fit: BoxFit.fill),
                  ))),
          const Positioned(
              top: 10,
              left: 0,
              right: 0,
              child: Text(
                'Training Title',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          const Positioned(
              top: 36,
              left: 135,
              child: Text(
                'Lorem ipsum, or lipsum as it is sometimes known',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    fontFamily: 'Poppins',
                    fontSize: 10,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          const Positioned(
              top: 71,
              left: 135,
              right: 0,
              child: Text(
                '6:30 PM | 30 Min',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Poppins',
                    fontSize: 10,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          const Positioned(
              top: 66,

              right: 10,
              child: Text(
                '3 Sports Left',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Poppins',
                    fontSize: 8,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 93,
              left: 135,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                  color: Color.fromRGBO(195, 5, 0, 1),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Text(
                      'Category',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(246, 246, 246, 1),
                          fontFamily: 'Poppins',
                          fontSize: 5,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 84,
              right: 10,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                  color: Color.fromRGBO(255, 7, 0, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Text(
                      'Book Now',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(246, 246, 246, 1),
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
        ]));
  }
}
