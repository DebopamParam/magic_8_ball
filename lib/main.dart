import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Future());
}

class Future extends StatelessWidget {
  const Future({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),

        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(.7),
            centerTitle: true,
            title: const Text("I Can Predict Your Future"),
            titleTextStyle: const TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          body: const Body(),
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override

  int img=1 ;
  void PredictFuture()
  {
    setState(() {
      img=Random().nextInt(5)+1;
    });
  }


  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: (){
            PredictFuture();
            print("Your Future is predicted $img");
          },
          child: Image.asset('images/ball$img.png',),
        ),
      ),
    );
  }
}
