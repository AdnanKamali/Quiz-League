import 'package:flutter/material.dart';

class TeamLogo extends StatelessWidget {
  const TeamLogo({super.key, required this.logo});
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      logo,
      height: 200,
    );
  }
}
