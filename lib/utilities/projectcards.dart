// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, camel_case_types

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class projectcards extends StatelessWidget {
  final String cardTitle;
  final int balance;
  final color;

  projectcards({
    Key? key,
    required this.balance,
    required this.cardTitle,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cardTitle,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Icon(
                Icons.paypal_outlined,
                size: 40,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'KSh ' + balance.toString() + '.',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Progress',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 18),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: CircularPercentIndicator(
                  animation: true,
                  restartAnimation: true,
                  animationDuration: 900,
                  radius: 40,
                  lineWidth: 8,
                  percent: 0.48,
                  backgroundColor: Colors.white,
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.orange,
                  center: Text(
                    '48 %',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
