import 'package:flutter/material.dart';
import 'package:test_app/suroo.dart';

import 'custom_button.dart';
import 'question_text.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final suroolor = [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10];
  List<bool> jooptor = [];

  int index = 0;

  void incrementIndex(bool joop) {
    if (jooptor.length < 10) {
      final result = joop == suroolor[index].joop;
      jooptor.add(result);
    }
    if (index < 9) {
      index++;
    } else {
      // Oyun butkondon kiyin jyyintygyb korsot
      List<bool> tooraJooptor = [];
      List<bool> kataJooptor = [];
      jooptor.map((e) => e == true ? tooraJooptor.add(e) : null).toList();
      jooptor.map((e) => e == false ? kataJooptor.add(e) : null).toList();
      // print(tooraJooptor);
      // print(tooraJooptor.length);
      // print(kataJooptor);
      // print(kataJooptor.length);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(flex: 2),
        QuestionText(text: suroolor[index].text),
        const Spacer(),
        CustomButton(
          bgColor: const Color(0xff4CB050),
          text: 'Туура',
          baskanda: () {
            incrementIndex(true);
          },
        ),
        const SizedBox(height: 20),
        CustomButton(
          bgColor: const Color(0xffEF443A),
          text: 'Туура эмес',
          baskanda: () {
            incrementIndex(false);
          },
        ),
        const Spacer(flex: 3),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: jooptor
                  .map(
                    (e) => Icon(
                      e ? Icons.check : Icons.close,
                      color: e ? Colors.green : Colors.red,
                    ),
                  )
                  .toList(),
            ),
            IconButton(
              iconSize: 40,
              onPressed: () {
                index = 0;
                jooptor.clear();
                setState(() {});
              },
              icon: const Icon(
                Icons.replay,
                color: Colors.white,
              ),
            )
          ],
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
