import 'package:dashboard/common/variables.dart';
import 'package:dashboard/common/variables_color.dart';
import 'package:dashboard/widgets/frame_19.dart';
import 'package:dashboard/widgets/image_avatar.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: Container(
        color: VariablesColor.themeColor,
        height: Variables.profileWidth,
        child: const Row(
          children: [
            ImageAvatar(),
            Frame19(),
          ],
        ),
      ),
    );
  }
}
