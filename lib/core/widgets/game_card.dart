// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:quiz_league/core/theme.dart';

enum GameCardDirection { Vertical, Horizontal }

enum ImageSize {
  // Image Height
  Big(200),
  Medium(150),
  Small(35);

  final double imageHeight;
  const ImageSize(this.imageHeight);
}

class GameContainerContext {
  final Color backgroundColor;
  final Widget? child;

  const GameContainerContext({
    this.backgroundColor = MyAppTheme.primaryColor,
    this.child,
  });
}

class GameContainerImageContext extends GameContainerContext {
  const GameContainerImageContext({
    super.backgroundColor = Colors.transparent,
    required this.title,
    required this.gameCardDirection,
    required this.imageSize,
    required this.imageUrl,
    this.subTitle,
  });
  final ImageSize imageSize;
  final GameCardDirection gameCardDirection;
  final String imageUrl;
  final String title;
  final String? subTitle;
}

class GameContainerItemFactory {
  static GameContainer createGameContainerImage(
    GameContainerImageContext gameCardContext,
  ) {
    final fontSize = gameCardContext.imageSize == ImageSize.Big ? 30.0 : 20.0;
    final children = [
      Image.network(
        gameCardContext.imageUrl,
        height: gameCardContext.imageSize.imageHeight,
      ),
      Text(
        gameCardContext.title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
        ),
      ),
      if (gameCardContext.subTitle != null) Text(gameCardContext.subTitle!),
    ];
    switch (gameCardContext.gameCardDirection) {
      case GameCardDirection.Horizontal:
        return GameContainer(
            backgroundColor: gameCardContext.backgroundColor,
            child: Row(
              spacing: 12,
              children: children,
            ));
      case GameCardDirection.Vertical:
        return GameContainer(
            backgroundColor: gameCardContext.backgroundColor,
            child: Column(
              spacing: 12,
              children: children,
            ));
    }
  }
}

class GameContainer extends StatelessWidget {
  const GameContainer({
    super.key,
    required this.child,
    this.backgroundColor = MyAppTheme.primaryColor,
  });
  final Widget child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}

class GameContainerButton extends GameContainer {
  const GameContainerButton({
    super.key,
    required super.child,
    required this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: GameContainer(
        backgroundColor: Colors.transparent,
        child: child,
      ),
    );
  }
}
