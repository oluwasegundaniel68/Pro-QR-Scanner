import 'package:flutter/material.dart';

import 'onboarding_page.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @ override
  void initState(){
    super.initState();
    _navigatetosplashcontent();
  }

  _navigatetosplashcontent()async{
    await Future.delayed(Duration(milliseconds: 6000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF333333),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('images/img.png',
                height: 200,
                width: 200,
              ),
            ),
            SizedBox(height: 40,),
            Text('Scan Pro',
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF)
              ),
            ),
          ],
        )
    );
  }
}


