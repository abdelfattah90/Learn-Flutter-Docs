import 'package:flutter/material.dart';

class BmiWiki extends StatelessWidget {
  const BmiWiki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const p5 =
        'الأشخاص الذين لديهم مؤشر عالي جدا أو منخفض جدا هم الأكثر عرضة للمخاطر الصحية، أما الأشخاص الذين لديهم مؤشر طبيعي فهم أقل عرضة إلا إذا: كانوا من المدخنين ، لا يمارسون الرياضة بشكل منتظم، يكثرون من تناول الأغذية الدهنية والأغذية السكرية';
    const p6 =
        'كتلة الجسم هو مؤشر وليس رقمًا مطلقًا بسبب كتلة عضلاتهم ، يمتلك بعض الرياضيين ولاعبي كمال الأجسام مؤشر كتلة جسم أكبر من 25 كجم / م 2 دون أن يشكل ذلك مشكلة على صحتهم، بالإضافة إلى ذلك، يختلف مؤشر كتلة الجسم وفقًا لشكل الشخص المعني فقد يكون أحد الأشخاص ممتلئ الجسم دون أن يكون سمينًا، والآخر قد يكون نحيفًا ولكن لديه الكثير من الدهون في الجسم. كما أن مؤشر كتلة الجسم غير صالح للحوامل اللائي يزيد وزنهن بين 10 و 20 كجم في المتوسط. لذلك، فإن مؤشر كتلة الجسم ليس وسيلة حاسمة للكشف عن السمنة الزائدة.';
    const p7 =
        'تعتبر منظمة الصحة العالمية المعايير المحددة في الجدول أعلاه ملائمة للاستخدام ، ولكنها يجب أن تراعي الجنس والعمر والعرق  ويجب أخذها في الاعتبار بحذر في التشخيص الفردي.';
    const p8 =
        'لذلك فإن تأثير مؤشر كتلة الجسم على مخاطر الوفاة غير حاسم لأنه لا يأخذ في الاعتبار الجنس أو العمر أو توزيع الدهون في الجسم (الدهون الموجودة على مستوى البطن لها التأثير الأكبر على صحة ولياقة الفرد).';
    const p9 =
        'يجب أن يتم الحكم على وزن الشخص من خلال مؤشر كتلة الجسم إلى جانب مؤشر كتلة الدهون، بمساعدة الطبيب، ويوصى بالتشاور مع أخصائي التغذية.';
    const p10 =
        'لا ترتبط الزيادة في مؤشر كتلة الجسم خطيًا مع شدة السمنة أو زيادة مخاطر القلب والأوعية الدموية وأصبح حساب مؤشر كتلة الجسم في المقام الأول أداة للحوار مع المريض.';
    const p11 =
        'وبالتالي يمكن أخذ معايير أخرى في الاعتبار لتقدير ما إذا كان الشخص يعاني من زيادة الوزن أم لا: محيط الخصر ، على سبيل المثال. يمكن بعد ذلك الحديث عن سمنة البطن عندما يكون محيط خصر الرجل أكبر من 100 سم ومحيط المرأة 88 سم (باستثناء الحامل). يجب مراقبة هذه الكتلة الدهنية الزائدة الموجودة حول البطن لأنها تمثل خطرًا متزايدًا للإصابة بمرض السكري وأمراض القلب والأوعية الدموية ، بغض النظر عن مؤشر كتلة الجسم.';

    return Scaffold(
      appBar: AppBar(
        title: const Text('مؤشر كتلة الجسم'),
        toolbarHeight: 50.0,
        backgroundColor: const Color(0xFFAF65DA),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: const Color(0xA9F3F3F3),
            child: Column(
              children: [
                const SizedBox(height: 30),
                DataTable(
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        'مؤشر كتلة الجسم – كغ/م2',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'التصنيف',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                  rows: const <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('أقل من 15')),
                        DataCell(Text('نقص حاد جدا')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('من 15 إلى 16')),
                        DataCell(Text('نقص حاد')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('من 17 إلى 19')),
                        DataCell(Text('نقص في الوزن')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('من 20 إلى 25')),
                        DataCell(Text('وزن طبيعي')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('من 26 إلى 29')),
                        DataCell(Text('زيادة في الوزن')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('من 30 إلى 35')),
                        DataCell(Text('سمنة خفيفة')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('من 36 إلى 40')),
                        DataCell(Text('سمنة متوسطة')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('أكثر من 40')),
                        DataCell(Text('سمنة مفرطة')),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const Text(
                  p5,
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(height: 20),
                const Text(
                  'مؤاخذات حول مؤشر كتلة الجسم',
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  p6,
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(height: 10),
                const Text(
                  p7,
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(height: 10),
                const Text(
                  p8,
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(height: 10),
                const Text(
                  p9,
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(height: 10),
                const Text(
                  p10,
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(height: 10),
                const Text(
                  p11,
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
