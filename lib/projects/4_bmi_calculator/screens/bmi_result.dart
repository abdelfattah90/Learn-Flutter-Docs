import 'package:flutter/material.dart';

import 'bmi_wiki.dart';

class BmiResult extends StatelessWidget {
  final bool isMale;
  final double height;
  final int age;
  final int weight;
  final int result;

  const BmiResult({
    Key? key,
    required this.isMale,
    required this.height,
    required this.age,
    required this.weight,
    required this.result,
  }) : super(key: key);

  Text category(name, [cColor = Colors.black]) {
    return Text('$name',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25.0, color: cColor));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('النتيجة'),
          toolbarHeight: 50.0,
          backgroundColor: const Color(0xFFAF65DA),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: isMale
                      ? const AssetImage('assets/bmi_calculator_images/man.png')
                      : const AssetImage(
                          'assets/bmi_calculator_images/woman.png'),
                  width: 100.0,
                  height: 100.0,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('الوزن: ${weight.round().toString()}',
                  style: const TextStyle(fontSize: 20.0)),
              const SizedBox(width: 20),
              Text('الطول: ${height.round().toString()}',
                  style: const TextStyle(fontSize: 20.0)),
              const SizedBox(width: 20),
              Text('العمر: ${age.round().toString()}',
                  style: const TextStyle(fontSize: 20.0)),
              const SizedBox(width: 10, height: 50),
            ],
          ),
          const SizedBox(height: 30),
          Text('$result :النتيجة',
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
          const SizedBox(height: 10),
          if (result < 15) category('نقص حاد جدا'),
          if (result == 15 || result == 16) category('نقص حاد'),
          if (result == 17 || result == 18 || result == 19)
            category('نقص في الوزن'),
          if (result == 20 ||
              result == 21 ||
              result == 22 ||
              result == 23 ||
              result == 24 ||
              result == 25)
            category('وزن طبيعي', const Color(0xFF2C9E4E)),
          if (result == 26 || result == 27 || result == 28 || result == 29)
            category('زيادة في الوزن', const Color(0xFF999722)),
          if (result == 30 ||
              result == 31 ||
              result == 32 ||
              result == 33 ||
              result == 34 ||
              result == 35)
            category('سمنة خفيفة', const Color(0xFFD8A90F)),
          if (result == 36 ||
              result == 37 ||
              result == 38 ||
              result == 39 ||
              result == 40)
            category('سمنة متوسطة', const Color(0xFFE07218)),
          if (result > 40) category('سمنة مفرطة', Colors.red),
        ],
      ),
    );
  }
}
