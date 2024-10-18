import 'package:flutter/material.dart';
import 'package:gesture_guru/CameraScreen.dart';
import 'package:gesture_guru/TutorialScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff091e3a), Color(0xff2f80ed), Color(0xff2d9ee0)],
              stops: [0, 0.5, 1],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )

        ),
        child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 200.0),
                child: Image(image: AssetImage('assets/logo.png')),
              ),
              const SizedBox(
                height: 100,
              ),
              const Text('WELCOME BACK!',style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
              ),),
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CameraScreen()));
                },
                child: Container(
                  height: 53,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white),
                  ),
                  child: const Center(child: Text('Real Time Translation',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),),
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TutorialScreen()));
                },
                child: Container(
                  height: 53,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white),
                  ),
                  child: const Center(child: Text('Proceed with Tutorial',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),),
                ),
              ),
              const Spacer(),

              const SizedBox(height: 12,)
            ]
        ),
      ),

    );
  }
}