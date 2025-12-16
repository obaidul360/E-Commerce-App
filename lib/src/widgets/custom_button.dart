import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.colo,
    required this.FnSize,
  });
  final VoidCallback onTap;
  final String title;
  final Color colo;
  final double FnSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Color(0xE3C76844),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: FnSize, color: colo),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
