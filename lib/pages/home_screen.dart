// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/button.dart';
import 'package:flutter_payment_app/component/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SingleChildScrollView(
        child: Container(
          // width: width,
          height: height,
          child: Stack(
            children: [
              Container(
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        // Methode1 here you need to add  height: 310,
                        // child: Image.asset(
                        //   "assets/images/background.png",
                        //   fit: BoxFit.cover,
                        // ),
                        height: 310,

                        // Methode 2 here you don't need to add  height: 310,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/background.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        child: Image.asset(
                          "assets/images/curve.png",
                          fit: BoxFit.cover,
                        ),
                        decoration: BoxDecoration(),
                      ),
                    ),
                    Positioned(
                      // left: 0,
                      right: 50,
                      bottom: 12,
                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet<dynamic>(
                            isScrollControlled: true,
                            barrierColor: Colors.transparent,
                            backgroundColor: Colors.grey.withOpacity(0.1),
                            // backgroundColor: Colors.green,
                            context: context,
                            builder: (BuildContext bc) {
                              return Container(
                                height:
                                    MediaQuery.of(context).size.height - 240,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 0,
                                      child: Container(
                                        color:
                                            Color(0xFFeef1f4).withOpacity(0.8),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height -
                                                300,
                                      ),
                                    ),
                                    Positioned(
                                      right: 50,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          top: 5,
                                        ),
                                        width: 60,
                                        height: 250,
                                        decoration: BoxDecoration(
                                          color: AppColor.mainColor,
                                          borderRadius:
                                              BorderRadius.circular(29),
                                        ),
                                        child: Column(
                                          children: [
                                            AppButton(
                                              icon: Icons.cancel,
                                              iconColor: AppColor.mainColor,
                                              textColor: Colors.white,
                                              backgroundColor: Colors.white,
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              text: 'Cancel',
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            AppButton(
                                              icon: Icons.add,
                                              iconColor: AppColor.mainColor,
                                              textColor: Colors.white,
                                              backgroundColor: Colors.white,
                                              onTap: () {
                                                Navigator.pushNamed(
                                                    context, "/addpayment");
                                              },
                                              text: 'Add Bill',
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            AppButton(
                                              icon: Icons.history,
                                              iconColor: AppColor.mainColor,
                                              textColor: Colors.white,
                                              backgroundColor: Colors.white,
                                              onTap: () {},
                                              text: 'History',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          child: Image.asset(
                            "assets/images/lines.png",
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 90,
                      left: 36,
                      // right: 10,
                      // bottom: 12,
                      child: Container(
                        child: Text(
                          "My Bills",
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            fontFamily: "ProjectFont",
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // ! this for listBills
              Positioned(
                top: 320,
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: width - 20,
                      margin: EdgeInsets.only(top: 5),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 1),
                            blurRadius: 10,
                            spreadRadius: 10,
                            color: const Color.fromARGB(255, 209, 207, 207),
                          ),
                        ],
                      ),
                      // content of each list bills
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 10,
                          left: 18,
                        ),
                        // big Row will contain 2 column one foe text & other for number
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          width: 3,
                                          color: Colors.redAccent,
                                        ),
                                      ),
                                      child: Image.asset(
                                        "assets/images/brand1.png",
                                        height: 60,
                                        width: 60,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "KenGen Power",
                                            style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "ID: 12345",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Auto pay on 24th May 24",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                // this will make green line - - - - - - - ...
                                Row(
                                  children: [
                                    for (int i = 0; i < 30; i++)
                                      i.isEven
                                          ? Container(
                                              width: 5,
                                              color: Colors.green,
                                              height: 2,
                                            )
                                          : Container(
                                              width: 5,
                                              color: Colors.white,
                                              height: 2,
                                            ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                bottom: 10,
                                right: 10,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Select",
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.white70,
                                      ),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                        Colors.black,
                                      ), //color of text
                                      padding: MaterialStateProperty.all(
                                        EdgeInsets.symmetric(
                                          horizontal: 30,
                                        ),
                                      ),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "\$1248.00",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Due in 3 days",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 130,
                      width: width - 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 1),
                            blurRadius: 10,
                            spreadRadius: 10,
                            color: const Color.fromARGB(255, 209, 207, 207),
                          ),
                        ],
                      ),
                      // content of each list bills
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 10,
                          left: 18,
                        ),
                        // big Row will contain 2 column one foe text & other for number
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          width: 3,
                                          color: Colors.redAccent,
                                        ),
                                      ),
                                      child: Image.asset(
                                        "assets/images/brand1.png",
                                        height: 60,
                                        width: 60,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "KenGen Power",
                                            style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "ID: 12345",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Auto pay on 24th May 24",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                // this will make green line - - - - - - - ...
                                Row(
                                  children: [
                                    for (int i = 0; i < 30; i++)
                                      i.isEven
                                          ? Container(
                                              width: 5,
                                              color: Colors.green,
                                              height: 2,
                                            )
                                          : Container(
                                              width: 5,
                                              color: Colors.white,
                                              height: 2,
                                            ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                bottom: 10,
                                right: 10,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Select",
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.white70,
                                      ),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                        Colors.black,
                                      ), //color of text
                                      padding: MaterialStateProperty.all(
                                        EdgeInsets.symmetric(
                                          horizontal: 30,
                                        ),
                                      ),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "\$1248.00",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Due in 3 days",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),

                      height: 130,
                      width: width - 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 1),
                            blurRadius: 10,
                            spreadRadius: 10,
                            color: const Color.fromARGB(255, 209, 207, 207),
                          ),
                        ],
                      ),
                      // content of each list bills
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 10,
                          left: 18,
                        ),
                        // big Row will contain 2 column one foe text & other for number
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          width: 3,
                                          color: Colors.redAccent,
                                        ),
                                      ),
                                      child: Image.asset(
                                        "assets/images/brand1.png",
                                        height: 60,
                                        width: 60,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "KenGen Power",
                                            style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "ID: 12345",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Auto pay on 24th May 24",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                // this will make green line - - - - - - - ...
                                Row(
                                  children: [
                                    for (int i = 0; i < 30; i++)
                                      i.isEven
                                          ? Container(
                                              width: 5,
                                              color: Colors.green[300],
                                              height: 2,
                                            )
                                          : Container(
                                              width: 5,
                                              color: Colors.white,
                                              height: 2,
                                            ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                bottom: 10,
                                right: 10,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Select",
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.white70,
                                      ),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                        Colors.black,
                                      ), //color of text
                                      padding: MaterialStateProperty.all(
                                        EdgeInsets.symmetric(
                                          horizontal: 30,
                                        ),
                                      ),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "\$1248.00",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Due in 3 days",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                right: 20,
                left: 20,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Add Bill",
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: "ProjectFont",
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.black87,
                    ),
                    foregroundColor: MaterialStateProperty.all(
                      Colors.white,
                    ), //color of text
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                    ),

                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
