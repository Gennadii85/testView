import 'package:badges/badges.dart';
import 'package:dashboard/common/variables.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

// from pull request
class AppBarLeading extends StatelessWidget {
  const AppBarLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: badges.Badge(
        position: badges.BadgePosition.topEnd(top: 10, end: 12),
        badgeStyle: BadgeStyle(
          badgeColor: Variables.budgeColor,
          borderRadius: BorderRadius.circular(3),
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none),
        ),
      ),
    );
  }
}
