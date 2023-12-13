import 'package:dashboard/common/variables_color.dart';
import 'package:dashboard/widgets/app_bar_leading.dart';
import 'package:dashboard/widgets/bottom_navigation_bar.dart';
import 'package:dashboard/widgets/drawer.dart';
import 'package:dashboard/widgets/app_bar_title.dart';
import 'package:dashboard/widgets/profile.dart';
import 'package:dashboard/widgets/profile_content.dart';
import 'package:flutter/material.dart';

// from pull request
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitleName(),
        actions: const [
          AppBarLeading(),
        ],
      ),
      drawer: const AppBarDrawer(),
      body: Container(
        height: double.infinity,
        decoration: VariablesColor.pageBackColor,
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
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
