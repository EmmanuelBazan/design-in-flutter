import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icon: Icons.pie_chart, title: 'General'),
          _SingleCard(
              color: Colors.pink,
              icon: Icons.car_rental_rounded,
              title: 'Transport')
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icon: Icons.pie_chart, title: 'General'),
          _SingleCard(
              color: Colors.pink,
              icon: Icons.car_rental_rounded,
              title: 'Transport')
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icon: Icons.pie_chart, title: 'General'),
          _SingleCard(
              color: Colors.pink,
              icon: Icons.car_rental_rounded,
              title: 'Transport')
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icon: Icons.pie_chart, title: 'General'),
          _SingleCard(
              color: Colors.pink,
              icon: Icons.car_rental_rounded,
              title: 'Transport')
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icon: Icons.pie_chart, title: 'General'),
          _SingleCard(
              color: Colors.pink,
              icon: Icons.car_rental_rounded,
              title: 'Transport')
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icon: Icons.pie_chart, title: 'General'),
          _SingleCard(
              color: Colors.pink,
              icon: Icons.car_rental_rounded,
              title: 'Transport')
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const _SingleCard({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                backgroundColor: color,
                radius: 30,
                child: Icon(icon),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: TextStyle(color: color, fontSize: 18),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
