import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import 'package:gap/gap.dart';

import 'package:universe2024/Utiles/app_styles.dart';
import 'package:universe2024/pages/loginpage.dart';

class profile extends StatelessWidget {
  const profile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Styles.yellowColor,
                    Styles.lblueColor,
                    Styles.blueColor
                  ])),
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            leading: SizedBox(
              width: 800, // Set the desired width
              height: double.infinity,
              child: Image.asset(
                'assets/unilogowhite.png',
                fit: BoxFit.fitHeight, // Adjust the fit as needed
              ),
            ),
            backgroundColor: Styles.blueColor),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Stack(children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: SingleChildScrollView(
                              child: Column(children: [
                            const Gap(20),
                            Icon(
                              Icons.person,
                              size: 120,
                              color: Styles.blueColor,
                            ),
                            const Gap(10),
                            Text(
                              "My Profile",
                              style: TextStyle(
                                fontSize: 25,
                                color: Styles.blueColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Gap(50),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(left: 27.0),
                                        // Adjust the left margin as needed
                                        child: Icon(
                                          Icons.note_alt_outlined,
                                          color: Styles.blueColor,
                                        ),
                                      ),
                                      Gap(3),
                                      Text(
                                        'About me',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Styles.blueColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    width: 450,
                                    height: 230,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Styles.yellowColor),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(13),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Name  :  John Doe',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Styles
                                                                .blueColor),
                                                      ),
                                                      Gap(5),
                                                      Text(
                                                        'Email  :  john.doe@example.com',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Styles
                                                                .blueColor),
                                                      ),
                                                      Gap(5),
                                                      Text(
                                                        'Phone Number  :  +1234567890',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Styles
                                                                .blueColor),
                                                      ),
                                                      Gap(5),
                                                      Text(
                                                        'College Name  :  XYZ University',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Styles
                                                                .blueColor),
                                                      ),
                                                    ])
                                              ]),
                                          const Gap(20),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: 220,
                                                  height: 45,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      // Add your onPressed logic here
                                                    },
                                                    style: ButtonStyle(
                                                      elevation:
                                                          MaterialStateProperty
                                                              .all(8),
                                                      shape:
                                                          MaterialStateProperty
                                                              .all(
                                                        RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(13),
                                                        ),
                                                      ),
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all(
                                                                  CupertinoColors
                                                                      .white),
                                                      side:
                                                          MaterialStateProperty
                                                              .all(
                                                        BorderSide(
                                                          color: Styles
                                                              .yellowColor, // Specify your border color here
                                                          width:
                                                              1, // Specify your border width here
                                                        ),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 40.0,
                                                              right: 40,
                                                              bottom: 10,
                                                              top: 10),
                                                      child: Text(
                                                        'Edit Details',
                                                        style: TextStyle(
                                                          color:
                                                              Styles.blueColor,
                                                          fontSize: 15,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                            Gap(50),
                            Container(
                              width: 450,
                              height: 500,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Styles.yellowColor),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                            Gap(30),
                            Container(
                              width: 150,
                              height: 40,
                              child: Material(
                                  elevation: 8,
                                  // Adjust the elevation as needed
                                  borderRadius: BorderRadius.circular(13),
                                  // Set the same border radius as the button
                                  child: SizedBox(
                                    // Adjust the width here
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Navigate to the signup page
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  loginpage()),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Styles.blueColor,
                                      ),
                                      child: Text(
                                        'Logout',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                            Gap(30),
                          ]))))
                ]))));
  }
}
