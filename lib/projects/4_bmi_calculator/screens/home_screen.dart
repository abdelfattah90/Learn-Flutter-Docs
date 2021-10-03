import 'dart:math';

import 'package:flutter/material.dart';

import '../screens/bmi_result.dart';
import 'bmi_wiki.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  final iconCheck = const Icon(
    Icons.check_circle,
    color: Colors.white,
  );
  double height = 180.0;
  int age = 30;
  int weight = 80;
  double result = 0.0;
  int resultRoundInt = 0;

  @override
  Widget build(BuildContext context) {
    var mainColor = const Color(0xFFAF65DA);
    return Scaffold(
      appBar: AppBar(
          title: const Text('مؤشر كتلة الجسم'),
          toolbarHeight: 50.0,
          backgroundColor: mainColor,
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.subject_outlined),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BmiWiki()));
              },
            ),
          ]),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: mainColor),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Image(
                              image: AssetImage(
                                  'assets/bmi_calculator_images/woman.png'),
                              width: 70.0,
                              height: 70.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(child: !isMale ? iconCheck : null),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'امرأة ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18.0),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.indigo),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Image(
                              image: AssetImage(
                                  'assets/bmi_calculator_images/man.png'),
                              width: 70.0,
                              height: 70.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(child: isMale ? iconCheck : null),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'رجل',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18.0),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFFA2A5AA)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('الطول',
                        style: TextStyle(color: Colors.white, fontSize: 25.0)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.round().toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 35.0)),
                        const SizedBox(width: 5.0),
                        const Text('CM',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0)),
                      ],
                    ),
                    Slider(
                      value: height,
                      max: 205.0,
                      min: 110.0,
                      label: height.round().toString(),
                      activeColor: mainColor,
                      inactiveColor: Colors.black54,
                      onChanged: (double value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.green.shade300),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('العمر', style: TextStyle(fontSize: 25.0)),
                          Text('$age', style: const TextStyle(fontSize: 25.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'removea',
                                mini: true,
                                child: const Icon(Icons.remove),
                                onPressed: age != 18
                                    ? () {
                                        setState(() {
                                          age--;
                                        });
                                      }
                                    : null,
                              ),
                              FloatingActionButton(
                                heroTag: 'adda',
                                mini: true,
                                child: const Icon(Icons.add),
                                onPressed: age != 90
                                    ? () {
                                        setState(() {
                                          age++;
                                        });
                                      }
                                    : null,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.orange.shade300),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('الوزن', style: TextStyle(fontSize: 25.0)),
                          Text('$weight',
                              style: const TextStyle(fontSize: 25.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'removew',
                                mini: true,
                                child: const Icon(Icons.remove),
                                onPressed: weight != 15
                                    ? () {
                                        setState(() {
                                          weight--;
                                        });
                                      }
                                    : null,
                              ),
                              FloatingActionButton(
                                heroTag: 'addw',
                                mini: true,
                                child: const Icon(Icons.add),
                                onPressed: weight != 250
                                    ? () {
                                        setState(() {
                                          weight++;
                                        });
                                      }
                                    : null,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: mainColor,
            child: TextButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                onPressed: () {
                  result = weight / pow(height / 100, 2);
                  resultRoundInt = result.round();

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BmiResult(
                          isMale: isMale,
                          height: height,
                          age: age,
                          weight: weight,
                          result: resultRoundInt,
                        ),
                      ));
                },
                child: const Text(
                  'احسب',
                  style: TextStyle(fontSize: 20),
                )),
          ),
        ],
      ),
    );
  }
}
