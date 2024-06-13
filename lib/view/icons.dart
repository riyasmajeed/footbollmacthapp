import 'package:flutter/material.dart';

class CircularIconContainer extends StatelessWidget {
  final IconData icon;

  CircularIconContainer({required this.icon, required bool isSelected, required void Function() onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey.shade300,
        ),
        child: Center(
          child: Icon(
            icon,
            size: 35,
            color: const Color.fromARGB(113, 97, 97, 97),
          ),
        ),
      ),
    );
  }
}