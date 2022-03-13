import 'package:flutter/material.dart';

class ElevatedContainer extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final bool constrained;
  const ElevatedContainer({
    Key? key,
    this.backgroundColor = Colors.white,
    this.constrained = false,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: constrained
          ? const BoxConstraints(maxHeight: 350)
          : const BoxConstraints.tightFor(),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 8,
              spreadRadius: 1,
              offset: const Offset(2, 3),
            ),
          ]),
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(10),
      child: child,
    );
  }
}
