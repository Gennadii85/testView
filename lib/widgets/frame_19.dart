import 'package:dashboard/common/variables.dart';
import 'package:dashboard/presentation/cubit/bottom_cubit/bottom_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// from pull request
class Frame19 extends StatelessWidget {
  const Frame19({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              height: 30,
              child: BlocBuilder<BottomCubit, BottomState>(
                builder: (context, state) {
                  return Text(
                    Variables.nameProfile,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Icon(Icons.location_on_outlined),
            SizedBox(
              height: 20,
              child: Text(
                Variables.cityProfile,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
