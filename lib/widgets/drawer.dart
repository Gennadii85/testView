import 'package:dashboard/common/variables.dart';
import 'package:flutter/material.dart';

class AppBarDrawer extends StatelessWidget {
  const AppBarDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Variables.drawerBackColor,
      child: ListView(
        children: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {},
          ),
          const IconButton(
            icon: Icon(Icons.store),
            onPressed: null,
          ),
          const IconButton(
            icon: Icon(Icons.add),
            onPressed: null,
          ),
          const IconButton(
            icon: Icon(Icons.calendar_month),
            onPressed: null,
          ),
          const IconButton(
            icon: Icon(Icons.message),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
