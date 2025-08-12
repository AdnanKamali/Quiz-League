import 'dart:async';

import 'package:flutter/material.dart';

class TimerIndicator extends StatefulWidget {
  const TimerIndicator({
    super.key,
    required this.onEndTime,
    this.milliseconds = 63000,
    required this.onStartTimer,
  });

  final void Function() onEndTime;
  final void Function(Timer timer) onStartTimer;
  final int milliseconds;
  @override
  State<TimerIndicator> createState() => _TimerIndicatorState();
}

class _TimerIndicatorState extends State<TimerIndicator> {
  Timer? _timer;
  late int _start;

  @override
  void initState() {
    super.initState();

    _start = widget.milliseconds;
    startTimer();
  }

  void startTimer() {
    if (context.mounted) {
      const oneSec = Duration(milliseconds: 10);
      _timer = Timer.periodic(
        oneSec,
        (Timer timer) {
          if (_start == 0) {
            setState(() {
              widget.onEndTime();
              timer.cancel();
            });
          } else {
            setState(() {
              _start -= 10;
            });
          }
        },
      );
      widget.onStartTimer(_timer!);
    }
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

    return LinearProgressIndicator(
      color: primaryColor,
      minHeight: 10,
      borderRadius: BorderRadius.circular(8),
      value: _start / 60000,
    );
  }
}
