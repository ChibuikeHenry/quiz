import 'package:flutter/material.dart';
import 'package:quiz/models/results_screen.dart';
import 'package:quiz/models/summary_item.dart';
class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary (this.summaryData, {super.key});

  final List <Map<String,Object>> summaryData;

  @override
  Widget build (BuildContext context) {
    return SizedBox(height: 400 ,
      child: SingleChildScrollView(
        child: Column(children: summaryData.map((data){
          return SummaryItem(data);
            // Row(children: [
            // Row(
            //   children: [
            //     Text(((data['question_index'] as int) +1).toString(),
            //
            //       ),
            //   ],
            // ),
            // Expanded(
            //   child: Column(children: [
            //     Text(data['question'] as String,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            //     ),
            //     const SizedBox(height: 5,),
            //     Text(data['user_answer'] as String,
            //       ),
            //     Text(data['correct_answer'] as String,
           // ),
           //
           //    ],),
           //  ),
          // ],);
        },
        ).toList(),
        ),
      ),
    );
  }

}