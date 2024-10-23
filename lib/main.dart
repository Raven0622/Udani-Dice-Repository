import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Dice'),
          backgroundColor: Colors.white,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = 1;
  int right = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: (){
                  setState(() {
                    left = 1 + Random().nextInt(6);
                    right = 1 + Random().nextInt(6);
                  });

                  print('Left image is clicked');
                  print(left);
                },
                child: Image.asset('images/dice$left.png')),
          )),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: TextButton(
                onPressed: (){
                  setState(() {
                    left = 1 + Random().nextInt(6);
                    right = 1 + Random().nextInt(6);
                  });
                  print('Right image is clicked');
                },
                child: Image.asset('images/dice$right.png')),
          )),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: (){
              setState(() {
                left = 1;
                right = 1;
              });
            },
            child: const Text(
              'Reset',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            )
          ),
        ],
      ),

    );

  }
}



