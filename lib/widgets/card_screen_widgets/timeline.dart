import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:mtg_cards/models/card/rullings/rulings.model.dart';

class Timeline extends StatelessWidget {
  final List<Rulings> rulings;
  const Timeline(
    this.rulings, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: rulings.length,
        itemBuilder: (context, item) {
          return Stack(
            alignment: Alignment.centerLeft,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [
                    SizedBox(width: size.width * 0.1),
                    SizedBox(
                      child: Text(DateFormat.yMMMMd()
                          .format(DateTime.parse(rulings[item].date as String))
                          .toString()),
                      width: size.width * 0.2,
                    ),
                    SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            rulings[item].text as String,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 20,
                child: Container(
                  height: size.height * 0.7,
                  width: 1.0,
                  color: Colors.grey.shade400,
                ),
              ),
              Positioned(
                left: 10,
                child: Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    color: Colors.purple[300],
                    border: Border.all(color: Colors.white),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 2,
                        offset: Offset(2, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
