import 'package:flutter/material.dart';
import 'package:quiz_league/core/widgets/loading_container.dart';

class TimeGameTileItemLoading extends StatelessWidget {
  const TimeGameTileItemLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListTile(
          tileColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Column(
            spacing: 12,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 14,
                children: [
                  LoadingContainer(size: Size(160, 16)),
                  LoadingContainer(size: Size(50, 50))
                ],
              ),
              Divider(
                color: Colors.indigo,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LoadingContainer(size: Size(90, 16)),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 12,
                      children: [
                        LoadingContainer(size: Size(35, 35)),
                        LoadingContainer(size: Size(60, 16)),
                        LoadingContainer(size: Size(30, 16)),
                        LoadingContainer(size: Size(60, 16)),
                        LoadingContainer(size: Size(35, 35))
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LoadingContainer(size: Size(90, 16)),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          contentPadding: EdgeInsets.all(16),
        ),
      ),
    );
  }
}
