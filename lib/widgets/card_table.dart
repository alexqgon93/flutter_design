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
              icon: Icons.grid_view_rounded,
              text: 'General',
              color: Colors.blue),
          _SingleCard(
              icon: Icons.fire_truck,
              text: 'Transport',
              color: Colors.deepPurple),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.shopping_bag_rounded,
              text: 'Shopping',
              color: Colors.pink),
          _SingleCard(
              icon: Icons.fire_truck, text: 'Bills', color: Colors.deepPurple)
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.crop_landscape,
              text: 'Entertainment',
              color: Colors.blue),
          _SingleCard(
              icon: Icons.fastfood_rounded,
              text: 'Grocery',
              color: Colors.green)
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.crop_landscape,
              text: 'Entertainment',
              color: Colors.blue),
          _SingleCard(
              icon: Icons.fastfood_rounded,
              text: 'Grocery',
              color: Colors.green)
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const _SingleCard(
      {required this.icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 30,
          child: Icon(icon, size: 30, color: Colors.white),
        ),
        const SizedBox(height: 30),
        Text(
          text,
          style: TextStyle(color: color, fontSize: 18),
        ),
      ],
    );
    return _CardBackground(child: column);
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
