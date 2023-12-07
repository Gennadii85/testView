import 'package:badges/badges.dart';
import 'package:dashboard/common/variables.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class ImageAvatar extends StatelessWidget {
  const ImageAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 4,
      child: badges.Badge(
        badgeContent: Icon(
          Icons.circle,
          color: Variables.budgeColor,
          size: 11,
        ),
        position: badges.BadgePosition.topStart(
          top: 2,
          start: 2,
        ),
        badgeStyle: BadgeStyle(
          borderSide: const BorderSide(
            color: Colors.white,
            width: 4,
          ),
          badgeColor: Variables.budgeColor,
          borderRadius: BorderRadius.circular(1),
        ),
        child: CircleAvatar(
          radius: Variables.circleAvatarWidth,
          backgroundImage: NetworkImage(
            Variables.url,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(50, 50, 0, 0),
            child: IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {},
              icon: Icon(
                Icons.edit_outlined,
                color: Variables.budgeColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
