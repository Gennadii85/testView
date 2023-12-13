import 'package:dashboard/common/variables_color.dart';
import 'package:dashboard/models/navigation_model.dart';
import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: SizedBox(
        height: 128,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: NavigationModel(
                  icon: Icons.task_outlined,
                  iconColor: VariablesColor.budgeColor,
                  topString: 'My Jobs',
                  bottomString: '10 jobs',
                  color: null,
                ),
              ),
              Flexible(
                child: NavigationModel(
                  icon: Icons.update,
                  iconColor: VariablesColor.budgeColor,
                  topString: 'Pending Jobs',
                  bottomString: '5 jobs',
                  color: null,
                ),
              ),
              Flexible(
                child: NavigationModel(
                  icon: Icons.search,
                  iconColor: Colors.white,
                  topString: 'Find a Job',
                  bottomString: '',
                  textColor: Colors.white,
                  color: VariablesColor.budgeColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
