import 'package:flutter/material.dart';

class NumberField extends StatefulWidget {
  const NumberField({
    super.key,
    required this.onChange,
    required this.title,
    this.defaultNumber = 0,
    this.maximum = 10,
    this.minimum = 1,
  });

  final String title;
  final void Function(int num) onChange;
  final int defaultNumber;
  final int maximum;
  final int minimum;

  @override
  State<NumberField> createState() => _NumberFieldState();
}

class _NumberFieldState extends State<NumberField> {
  late int number;
  @override
  void initState() {
    number = widget.defaultNumber;
    super.initState();
  }

  void onIncrease() {
    if (number >= widget.maximum) return;
    number++;
    widget.onChange(number);
    setState(() {});
  }

  void onDecrease() {
    if (number <= widget.minimum) return;
    number--;
    widget.onChange(number);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Text(widget.title),
        Row(
          spacing: 4,
          children: [
            ElevatedButton(
              onPressed: onIncrease,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Icon(Icons.plus_one),
            ),
            Container(
              padding: EdgeInsets.all(2),
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.indigo.shade400,
                  borderRadius: BorderRadius.circular(4)),
              child: Text(
                "$number",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            ElevatedButton(
              onPressed: onDecrease,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Icon(Icons.exposure_minus_1_rounded),
            ),
          ],
        ),
      ],
    );
  }
}
