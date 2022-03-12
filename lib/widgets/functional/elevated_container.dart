import 'package:flutter/material.dart';

class ElevatedContainer extends StatelessWidget {
  final Widget child;
  const ElevatedContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
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
      // elevation: 5,
      // borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: child,
    );
  }
}
