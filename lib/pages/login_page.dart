import 'dart:async';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hlx/main.dart';
import 'package:hlx/pages/bottom_navigation.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FocusNode focusNode = FocusNode();

  FirebaseAuth auth = FirebaseAuth.instance;

  int _timerCountdown = 60;
  String _phoneNumber = '';
  Timer? _timer;
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _otpController = TextEditingController();
  String? verifyId;

  // void phoneAuth() async {
  //   await FirebaseAuth.instance.verifyPhoneNumber(
  //     phoneNumber: _phoneNumber,
  //     verificationCompleted: (PhoneAuthCredential credential) {},
  //     verificationFailed: (FirebaseAuthException e) {},
  //     codeSent: (String verificationId, int? resendToken) async {
  //       verifyId = verificationId;
  //     },
  //     codeAutoRetrievalTimeout: (String verificationId) {},
  //   );
  // }
  //
  // void sentCode() async {
  //   try {
  //     String smsCode = _otpController.text;
  //
  //     PhoneAuthCredential credential =
  //     PhoneAuthProvider.credential(verificationId: verifyId!, smsCode: smsCode);
  //
  //     await auth.signInWithCredential(credential).then((value) {
  //       if (value.user != null) {
  //         Get.to(MyHomePage);
  //       }
  //     });
  //   } catch (ex) {
  //     Get.snackbar("Wrong OTP code", "Check the code sent to you");
  //   }
  // }
  //
  // void dispose() {
  //   _phoneNumberController.dispose();
  //   _timer?.cancel();
  //   super.dispose();
  // }
  //
  // void _startTimer() {
  //   _timer = Timer.periodic(Duration(seconds: 1), (timer) {
  //     setState(() {
  //       if (_timerCountdown > 0) {
  //         _timerCountdown--;
  //       } else {
  //         _timer?.cancel();
  //       }
  //     });
  //   });
  // }
  //
  // void _showOTPDialog() {
  //   _otpController.clear();
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return AlertDialog(
  //         title: Text('Enter OTP'),
  //         content: TextField(
  //           controller: _otpController,
  //           keyboardType: TextInputType.number,
  //           maxLength: 6,
  //           decoration: InputDecoration(
  //             hintText: 'Enter 6-digit OTP',
  //           ),
  //         ),
  //         actions: [
  //           TextButton(
  //             onPressed: () {
  //               Navigator.pop(context);
  //             },
  //             child: Text('Cancel'),
  //           ),
  //           TextButton(
  //             onPressed: () {
  //               sentCode();
  //               String otp = _otpController.text;
  //               if (otp.length == 6) {
  //                 _timerCountdown = 60;
  //                 _startTimer();
  //                 Navigator.pop(context); // Close dialog
  //               } else {
  //                 Get.snackbar(
  //                   'Invalid OTP',
  //                   'Please enter a 6-digit OTP.',
  //                   snackPosition: SnackPosition.BOTTOM,
  //                 );
  //               }
  //             },
  //             child: Text('Submit'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                child: Column(
                  children: [
                    Text(
                      'HLX',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Colors.lightBlue.withOpacity(0.5),
                            offset: Offset(5.0, 5.0),
                          ),
                        ],
                        decorationStyle: TextDecorationStyle.wavy,
                        decorationColor: Colors.blueAccent,
                        letterSpacing: 5,
                      ),
                    ),
                    Image.asset("assets/bcar.png"),
                  ],
                ),
              ),
              SafeArea(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.51,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 55,
                        left: 30,
                        child: Text(
                          'Welcome to HLX',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.15,
                        left: 20,
                        right: 20,
                        child: Column(
                          children: [
                            IntlPhoneField(
                              controller: _phoneNumberController,
                              focusNode: focusNode,
                              decoration: InputDecoration(
                                labelText: 'Phone Number',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(),
                                ),
                              ),
                              languageCode: "en",
                              onChanged: (phone) {
                                setState(() {
                                  _phoneNumber = phone.completeNumber ?? '';
                                });
                              },
                              onCountryChanged: (country) {
                                print('Country changed to: ' + country.name);
                              },
                            ),
                            SizedBox(height: 20),
                            Container(
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: IconButton(
                                onPressed: () {
                                  // _showOTPDialog();
                                  // phoneAuth();
                                  Get.to(MyHomePage());
                                },
                                icon: Icon(Icons.car_rental_sharp,
                                    color: Colors.blue, size: 30),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 50,
                        left: 0,
                        right: 0,
                        child: FractionallySizedBox(
                          widthFactor: 0.15,
                          alignment: Alignment.center,
                          child: Container(
                            width: 30,
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: IconButton(
                              onPressed: () {
                                print(_phoneNumber);

                              },
                              icon: Image.asset(
                                "assets/google.png",
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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

