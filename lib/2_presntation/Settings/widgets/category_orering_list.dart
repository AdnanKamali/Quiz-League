import 'dart:ui';

import 'package:flutter/material.dart';

class CategoryOreringList extends StatefulWidget {
  const CategoryOreringList({super.key});

  @override
  State<CategoryOreringList> createState() => _CategoryOreringListState();
}

class _CategoryOreringListState extends State<CategoryOreringList> {
  // list of tiles
  final List myTiles = [
    'A',
    'B',
    'C',
    'D',
    'D1',
    'D2',
    'D3',
    'D4',
    'D5',
    'D6',
    'D7',
  ];

  // reorder method
  void updateMyTiles(int oldIndex, int newIndex) {
    setState(() {
      // this adjustment is needed when moving down the list
      if (oldIndex < newIndex) {
        newIndex -= 1;
      }

      // get the tile we are moving
      final String tile = myTiles.removeAt(oldIndex);
      // place the tile in new position
      myTiles.insert(newIndex, tile);
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color draggableItemColor = Colors.indigo.shade600;

    Widget proxyDecorator(
      Widget child,
      int index,
      Animation<double> animation,
    ) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: AnimatedBuilder(
          animation: animation,
          builder: (BuildContext context, Widget? child) {
            final double animValue =
                Curves.easeInOut.transform(animation.value);
            final double elevation = lerpDouble(0, 6, animValue)!;
            return Material(
              elevation: elevation,
              color: draggableItemColor,
              shadowColor: draggableItemColor,
              child: child,
            );
          },
          child: child,
        ),
      );
    }

    return SizedBox(
        height: 600,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "ترتیب بندی سوالات بر اساس",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
            SizedBox(
              height: 500,
              child: ReorderableListView(
                proxyDecorator: proxyDecorator,
                padding: const EdgeInsets.all(10),
                children: [
                  for (final tile in myTiles)
                    Padding(
                      key: ValueKey(tile),
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.indigoAccent,
                            borderRadius: BorderRadius.circular(8)),
                        child: ListTile(
                          title: Text(
                            tile,
                            textDirection: TextDirection.rtl,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                      ),
                    ),
                ],
                onReorder: (oldIndex, newIndex) {
                  updateMyTiles(oldIndex, newIndex);
                },
              ),
            ),
          ],
        ));
  }
}
