import 'package:dashboard/common/variables.dart';
import 'package:dashboard/common/variables_color.dart';
import 'package:flutter/material.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: SizedBox(
        height: 163,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _titleRow(),
            _fileCard(),
          ],
        ),
      ),
    );
  }

  Flexible _fileCard() {
    return Flexible(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) => SizedBox(
          width: 109,
          height: 123,
          child: Card(
            color: VariablesColor.navigationModelColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _image(),
                ),
                _bottomRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _bottomRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.file_copy,
          size: 12,
          color: Colors.amberAccent[200],
        ),
        const SizedBox(width: 5),
        const Text(
          'some text',
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Container _image() {
    return Container(
      width: 94,
      height: 73,
      decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
        image: DecorationImage(
          image: NetworkImage(Variables.url),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
    );
  }

  Row _titleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Variables.title3,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            Variables.jobButtonTitle,
            style: TextStyle(
              color: VariablesColor.budgeColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
