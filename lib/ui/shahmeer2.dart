import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/utils/app_colors.dart';
import 'package:gym_app/utils/app_theme.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: SizedBox(
            height: 50,
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:   <Widget>[
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: (){
                        Navigator.of(context).pop();
                      },

                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Parties",
                      style: AppTheme.getInstance().textRegular18White(),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ],
            ),
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        // key: _scaffoldKey,_scaffoldKey,
        body:SingleChildScrollView(
          child: Column(children: [
            
            Container(
              decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.circular(12)
              ),

              padding:const EdgeInsets.only(top: 15,left: 15,right: 15, bottom: 15),
              margin:const EdgeInsets.only(top: 15,left: 15,right: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back,
                    color: Colors.red,
                    size: 30,
                  ),

                  Text(
                    "12 Jan, 2022",
                    style: AppTheme.getInstance().textBold16RedLight(),
                    textAlign: TextAlign.start,
                  ),

                  Icon(
                    Icons.arrow_forward,
                    color: AppColors.red,
                    size: 30,
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top:10 ,left: 15,right: 15,bottom: 30),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context,position){
                    return itemLink(position,context);

                  }),
            ),

          ]),
        )
    );
  }

  Widget itemLink(int position, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: (){
        },
        child: Column(
          children: [
            Card(

              elevation: 0,
              color: AppColors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset("assets/images/carousel1.png", fit: BoxFit.fill,height: 200),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                              margin: const EdgeInsets.only(top: 10,right: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child:Text(
                                '12 Jan | 12:30 pm',
                                style: AppTheme.getInstance().textRegular14BoldWhite(),
                              ),

                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding:const EdgeInsets.only(top: 15,left: 15,right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Party Name",
                          style: AppTheme.getInstance().textRegular18BoldWhite(),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          "12 seats available",
                          style: AppTheme.getInstance().textRegular18White(),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding:const EdgeInsets.only(top: 5,left: 15,right: 15,bottom: 10),
                    child: SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lorum Ipsum",
                            style: AppTheme.getInstance().textRegular18White(),
                            textAlign: TextAlign.start,
                          ),

                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child:Text(
                              'Book Now',
                              style: AppTheme.getInstance().textRegular18White(),
                            ),

                          )

                        ],
                      ),
                    ),

                  ),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
