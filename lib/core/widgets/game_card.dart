import 'package:flutter/material.dart';

class GameCardItem extends StatelessWidget {
  const GameCardItem({
    super.key,
    this.onTap,
    this.isDisabled = false,
    required this.child,
  });
  final void Function()? onTap;
  final bool isDisabled;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final disableColor = Theme.of(context).disabledColor;
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: isDisabled ? null : onTap,
      child: Card(
        color: isDisabled ? disableColor : primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: child,
        ),
      ),
    );
  }
}
