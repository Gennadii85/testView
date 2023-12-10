import 'package:dashboard/common/variables.dart';
import 'package:flutter/material.dart';

// from pull request
class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double iconRadius = MediaQuery.of(context).size.width / 12;
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      useLegacyColorScheme: false,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedIconTheme: IconThemeData(
        color: Variables.budgeColor,
        // size: 24,
      ),
      unselectedIconTheme: IconThemeData(
        color: Variables.jobQuotationContentCityColor,
        // size: 24,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: Variables.jobQuotationContentCityColor,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: Variables.budgeColor,
      ),
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Dashboard',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.badge_outlined),
          label: 'Job Market',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.transparent,
          icon: IconButton(
            style: IconButton.styleFrom(
              fixedSize: Size.fromRadius(iconRadius),
              backgroundColor: Variables.budgeColor,
            ),
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Colors.white,
              size: iconRadius,
            ),
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_outlined),
          label: 'Calendar',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.message_outlined),
          label: 'Message',
        ),
      ],
    );
  }
}
