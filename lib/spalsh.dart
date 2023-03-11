import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splashIconSize: 1000,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.leftToRight,
        splash: Container(
          height: 1000,
          child: Image(image: AssetImage("assets/images/opening.png"),height: 1000,),
        ),
        nextScreen: nextScreen());
  }
}
class nextScreen extends StatelessWidget {
  const nextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {  },
        child: Icon(Icons.add,color: Colors.black,),

      ),
      body:Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Notepad',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              ),
            ),
            Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(

                    labelText: 'Search notes',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),

                    )
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(

                color: Colors.greenAccent,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child:

                      Text('Todays grocery List \n June 26 ,2022 08:05 PM',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                    ,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(

                color: Colors.amberAccent,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:

                    Text('Todays grocery List \n June 26 ,2022 08:05 PM',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                    ,
                  ),
                ),
              ),
            )




          ],
        ),
      ),
    );
  }
}