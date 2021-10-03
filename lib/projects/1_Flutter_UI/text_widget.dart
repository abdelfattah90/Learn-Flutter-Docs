import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets.dart';

class TextWidgetPage extends StatelessWidget {
  const TextWidgetPage({Key? key}) : super(key: key);
  final String intro =
      'من تأمل بعين الفكر دوام البقاء في الجنة، في صفاء بلا كدر، ولذات بلا انقطاع، وبلوغ كل مطلوب للنفس، والزيادة مما لا عين رأت، ولا أذن سمعت، ولا خطر على قلب بشر، من غير تغيير ولا زوال، إذ لا يقال: ألف ألف سنةٍ، ولا مائة ألف ألف، بل ولو أن الإنسان عد الألوف ألوف السنين لانقضى عدده، وكان له نهاية، وبقاء الآخرة لا نفاد له، إلا أنه لا يحصل ذلك إلا بنقد هذا العمر';
  final String par =
      'إن الإعراض عن الشروع في هذا البيع والشراء لغبن فاحش في الغفل، وخلل في الغيمان بالوعد؛ فإن من يدري كيف يعقد البيع بالعلم، هو الذي يدل على الطريق، ويعرف ما يصلح لها، ويحذر من قطاعها';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('TextWidget'),
      body: Column(
        children: [
          Text(
            'Font From Google',
            style: GoogleFonts.lato(
                textStyle: const TextStyle(
                    color: Colors.blueAccent, fontSize: 35, letterSpacing: .5)),
          ),
          const Text(
            'Font From Assets',
            style: TextStyle(
                fontFamily: 'ViaodaLibre',
                color: Colors.deepPurpleAccent,
                fontSize: 40),
          ),
          const Text.rich(
            TextSpan(
                text: 'The price of heaven | ',
                style: TextStyle(color: Colors.green, fontSize: 15),
                children: [
                  TextSpan(text: ' Al-Hayat School'),
                  TextSpan(
                      style: TextStyle(
                          color: Colors.indigoAccent,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                      text: '  1432 AH')
                ]),
          ),
          Text(
            intro,
            textAlign: TextAlign.justify,
            textDirection: TextDirection.rtl,
          ),
          Text(
            par,
            textAlign: TextAlign.justify,
            textDirection: TextDirection.rtl,
          )
        ],
      ),
    );
  }
}
