import 'package:capitals_game/models/question.dart';
import 'package:capitals_game/widgets/app_bar_title.dart';
import 'package:flutter/material.dart';

class HomeDetailView extends StatefulWidget {
  const HomeDetailView(this.tests, {super.key});

  final List<Test> tests;

  @override
  State<HomeDetailView> createState() => _HomeDetailViewState();
}

class _HomeDetailViewState extends State<HomeDetailView> {
  int index = 0;

  List<bool> answers = [];

  void checkAnswer(bool isTrue) {
    if (answers.length < widget.tests.length) {
      answers.add(isTrue);
      if (index + 1 < widget.tests.length) {
        index++;
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitile('Try Test'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            widget.tests[index].questionText,
            style: const TextStyle(fontSize: 38),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.network(
              widget.tests[index].imageUrl,
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.fitHeight,
            ),
          ),
          Row(
            children: [
              OptionButton(
                text: widget.tests[index].variant1.text,
                onPressed: () {
                  checkAnswer(widget.tests[index].variant1.isTrue);
                },
              ),
              OptionButton(
                text: widget.tests[index].variant2.text,
                onPressed: () {
                  checkAnswer(widget.tests[index].variant2.isTrue);
                },
              ),
            ],
          ),
          Row(
            children: [
              OptionButton(
                text: widget.tests[index].variant3.text,
                onPressed: () {
                  checkAnswer(widget.tests[index].variant3.isTrue);
                },
              ),
              OptionButton(
                text: widget.tests[index].variant4.text,
                onPressed: () {
                  checkAnswer(widget.tests[index].variant4.isTrue);
                },
              ),
            ],
          ),
          const Spacer(),
          SizedBox(
            height: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: answers.length,
                itemBuilder: (BuildContext context, int index) {
                  final answer = answers[index];
                  return Icon(
                    Icons.star,
                    color: answer ? Colors.yellow : Colors.red,
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 50)
        ],
      ),
    );
  }
}

class OptionButton extends StatelessWidget {
  const OptionButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(double.infinity, 70),
            textStyle: const TextStyle(fontSize: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(text, textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
