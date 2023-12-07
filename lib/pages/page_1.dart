import 'package:dashboard/common/variables.dart';
import 'package:dashboard/widgets/app_bar_leading.dart';
import 'package:dashboard/widgets/drawer.dart';
import 'package:dashboard/widgets/app_bar_title.dart';
import 'package:dashboard/widgets/profile.dart';
import 'package:dashboard/widgets/profile_content.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitle(),
        actions: const [
          AppBarLeading(),
        ],
      ),
      drawer: const AppBarDrawer(),
      body: Container(
        height: double.infinity,
        decoration: Variables.pageBackColor,
        child: const SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Profile(),
              ProfileContent(),
            ],
          ),
        ),
      ),
    );
  }
}
