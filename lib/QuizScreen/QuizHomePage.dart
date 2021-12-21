

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'QuizTimer.dart';
import '../Constant/TextConstant.dart';


class QuizHomePage extends StatefulWidget {
  const QuizHomePage({Key? key}) : super(key: key);

  @override
  _QuizHomePageState createState() => _QuizHomePageState();
}

class _QuizHomePageState extends State<QuizHomePage> {
  void nextQuestion (){

    setState(() {
      questionIndex = questionIndex + 1;

    });
  }
  void previousQuestion(){
    setState(() {
      questionIndex = questionIndex - 1;
    });
  }
  int questionIndex = 0;

  final questions = [
    'Capital of India',
    'First President of india',
    'Titikaka Lake ',
    'question4',
    'question5',
    'question6',
    'question7',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF3F6FD),
        body: Column(
          children: [
            SizedBox(height: 30.h,),
            Container(
              height: 384,
              width: double.infinity,
              color: const Color(0xffFFFFFF),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Question 1 of 8',style: TextStyle(fontSize: 12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('single choice answer',style: TextStyle(fontSize: 20),),
                      SizedBox(
                          height: 20,width: 200,
                          child: QuizTimer()),
                    ],
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height*0.2,
                      width: double.infinity,
                      color: const Color.fromRGBO(54, 114, 233, 0.4),
                      child: Center(child: Text(questions[questionIndex],style: TextConstant.kDefaultHeading,))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: previousQuestion,
                          child: Row(
                            children: const [
                              Icon(Icons.arrow_back_ios),
                              Text('Previous'),
                            ],
                          )),
                      ElevatedButton(
                          onPressed:nextQuestion,
                          child: Row(
                            children: const [

                              Text('Next'),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          )),
                    ],
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}
