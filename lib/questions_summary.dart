import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((e) {
            final bgColor = e['correct_answer'] == e['user_answer']
                ? const Color.fromARGB(255, 63, 154, 228)
                : const Color.fromARGB(255, 210, 72, 205);
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150), color: bgColor),
                  child: Text(
                    (((e['question_index'] as int) + 1).toString()),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e['question'].toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(e['user_answer'].toString(),
                            style: const TextStyle(
                                color: Color.fromARGB(255, 230, 199, 241))),
                        Text(e['correct_answer'].toString(),
                            style: const TextStyle(
                                color: Color.fromARGB(255, 63, 154, 228)))
                      ],
                    ),
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
