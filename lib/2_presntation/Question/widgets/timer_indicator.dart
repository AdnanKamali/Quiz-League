import 'dart:async';

import 'package:flutter/material.dart';

class TimerIndicator extends StatefulWidget {
  const TimerIndicator({super.key});

  @override
  State<TimerIndicator> createState() => _TimerIndicatorState();
}

class _TimerIndicatorState extends State<TimerIndicator> {
  Timer? _timer;
  int _start = 60000;

  void startTimer() {
    const oneSec = Duration(milliseconds: 10);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
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

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _start == 60000
        ? ElevatedButton(onPressed: startTimer, child: Text("Start"))
        : LinearProgressIndicator(
            color: Colors.indigoAccent,
            minHeight: 10,
            borderRadius: BorderRadius.circular(8),
            value: _start / 60000,
          );
  }
}
