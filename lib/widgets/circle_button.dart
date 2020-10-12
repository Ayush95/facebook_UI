import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Function buttonPressed;

  const CircleButton({
    Key key,
    @required this.icon,
    @required this.iconSize,
    @required this.buttonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.1, 1),
            blurRadius: 1,
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(
          icon,
          size: iconSize,
        ),
        color: Colors.black,
        onPressed: buttonPressed,
      ),
    );
  }
}
