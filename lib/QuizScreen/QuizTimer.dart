import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class QuizTimer extends StatefulWidget {
  const QuizTimer({Key? key}) : super(key: key);

  @override
  _QuizTimerState createState() => _QuizTimerState();
}

class _QuizTimerState extends State<QuizTimer> {
  @override
  void initState() {
    super.initState();
    controller = CountdownTimerController(endTime: endTime, onEnd: onEnd);
  }

  void onEnd() {
    setState(() {

    });
  }
  late CountdownTimerController controller;
  int endTime = DateTime.now().millisecondsSinceEpoch + 1010 * 30;
  @override
  Widget build(BuildContext context) {
    return CountdownTimer(
      controller: controller,
      onEnd: onEnd,
      endTime: endTime,
      widgetBuilder: (BuildContext,time){
        return Text(' 00 hrs:00 min:${time?.sec}sec');
      },


    );

  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
