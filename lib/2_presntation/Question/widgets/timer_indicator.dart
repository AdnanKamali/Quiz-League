import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/2_presntation/Question/controller/question_answer_cubit/question_answer_cubit.dart';

class TimerIndicator extends StatefulWidget {
  const TimerIndicator({super.key});

  @override
  State<TimerIndicator> createState() => _TimerIndicatorState();
}

class _TimerIndicatorState extends State<TimerIndicator> {
  late QuestionAnswerCubit _questionAnswerCubit;

  Timer? _timer;
  int _start = 63000;

  void startTimer() {
    if (context.mounted) {
      const oneSec = Duration(milliseconds: 10);
      _timer = Timer.periodic(
        oneSec,
        (Timer timer) {
          if (_start == 0) {
            setState(() {
              _questionAnswerCubit.showResultQuestion(null);
              timer.cancel();
            });
          } else {
            setState(() {
              _start -= 10;
            });
          }
        },
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _questionAnswerCubit = context.read<QuestionAnswerCubit>();
    Future.delayed(Duration.zero).then(
      (value) => !context.mounted
          ? null
          : _questionAnswerCubit.state.maybeWhen(
              orElse: () => startTimer(),
              showAnswer: (_) => null,
            ),
    );
  }

  void timerDisposer() {
    if (_timer != null && _timer!.isActive) {
      _timer?.cancel();
    }
  }

  @override
  void dispose() {
    timerDisposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return BlocListener<QuestionAnswerCubit, QuestionAnswerState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () => null,
          showAnswer: (_) => timerDisposer(),
        );
      },
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: LinearProgressIndicator(
          color: primaryColor,
          minHeight: 10,
          borderRadius: BorderRadius.circular(8),
          value: _start / 60000,
        ),
      ),
    );
  }
}
