import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/2_presntation/Question/controller/question_option_bloc/question_option_bloc.dart';

class TimerIndicator extends StatefulWidget {
  const TimerIndicator({super.key});

  @override
  State<TimerIndicator> createState() => _TimerIndicatorState();
}

class _TimerIndicatorState extends State<TimerIndicator> {
  late QuestionOptionBloc _questionOptionBloc;
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
              timer.cancel();
              _questionOptionBloc.add(
                QuestionOptionEvent.showResult(questionOption: null),
              );
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
    _questionOptionBloc = context.read<QuestionOptionBloc>();
    Future.delayed(Duration.zero).then(
      (value) => !context.mounted
          ? null
          : _questionOptionBloc.state.maybeWhen(
              orElse: () => startTimer(),
              answered: (_) => null,
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

    return BlocListener<QuestionOptionBloc, QuestionOptionState>(
      listener: (context, state) {
        state.mapOrNull(
          answered: (value) => timerDisposer(),
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
