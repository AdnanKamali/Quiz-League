import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/2_presntation/Question/controller/question_option_cubit/question_option_cubit.dart';

class TimerIndicator extends StatefulWidget {
  const TimerIndicator({super.key});

  @override
  State<TimerIndicator> createState() => _TimerIndicatorState();
}

class _TimerIndicatorState extends State<TimerIndicator> {
  late QuestionOptionCubit questionOptionCubit;
  Timer? _timer;
  int _start = 63000;

  void startTimer() {
    const oneSec = Duration(milliseconds: 10);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            questionOptionCubit.checkAnswer();
          });
        } else {
          setState(() {
            _start -= 10;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    questionOptionCubit = context.read<QuestionOptionCubit>();
    Future.delayed(Duration(seconds: 2)).then(
      (value) => startTimer(),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    questionOptionCubit.cancelTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return BlocListener<QuestionOptionCubit, QuestionOptionState>(
      listener: (context, state) {
        cancelTimer() {
          _timer!.cancel();
          questionOptionCubit.cancelTimer();
        }

        state.mapOrNull(
          answered: (value) => cancelTimer(),
          endTime: (value) => cancelTimer(),
        );
      },
      child: LinearProgressIndicator(
        color: primaryColor,
        minHeight: 10,
        borderRadius: BorderRadius.circular(8),
        value: _start / 60000,
      ),
    );
  }
}
