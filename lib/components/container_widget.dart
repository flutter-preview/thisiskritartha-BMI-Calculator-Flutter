import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  ContainerWidget({required this.color, this.childCard, this.onPress});
  final Widget? childCard;
  final Color color;
  final Function()? onPress; //VoidCallback or Function()

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
