import 'package:flutter/material.dart';

import '../../../main_page/presentation/views/main_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller =PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF333333),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16,right: 16,top: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 290),
                child: GestureDetector(
                  onTap:(){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MainPage()));
                  },
                  child: const Text('Skip',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFFFF)
                    ),
                  ),
                ),
              ),
              Expanded(
                child:PageView.builder(
                  controller: controller,
                    itemBuilder: (context, index)=> OnboardContent(
                    image: contents[index].image,
                    title: contents[index].title,
                    description: contents[index].description,
                )
                )

              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Onboard{
  final String  image, title, description;

  Onboard({required this.image, required this.title, required this.description});
}
final List<Onboard> contents= [

  Onboard(
      image:'images/img_1.png',
      title:'Open the scanner, align with a QR code.',
      description:"Effortlessly scan QR codes to access exclusive content."),


  Onboard(
      image:'images/img_1.png',
      title:'Simply scan to unlock content, Your data is always safe.',
      description:'Use it with confidence to access trusted content effortlessly.'),

];


class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
  required this.image,
  required this.title,
  required this.description,
  });
  final String image,title,description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 70,left: 70,right: 70),
          child: Image.asset(image,
          ),
        ),
        const SizedBox(height: 160,),
        Text(title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFFFFF),
          ),
        ),
        Text(description,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Color(0xFFFFFFFF),
          ),
        ),
        const SizedBox(height: 20,),
        GestureDetector(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MainPage()));
          },
          child: Container(
            width: 319,
            height: 58,
            decoration: BoxDecoration(
              color: const Color(0xFFFDB623),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Let's Start",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
