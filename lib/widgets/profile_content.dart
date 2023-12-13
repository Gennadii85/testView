import 'package:dashboard/widgets/job_quotation.dart';
import 'package:dashboard/widgets/navigation.dart';
import 'package:dashboard/widgets/recent_files.dart';
import 'package:flutter/material.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: Column(
        children: [
          Navigation(),
          JobQuotation(),
          RecentFiles(),
        ],
      ),
    );
  }
}
