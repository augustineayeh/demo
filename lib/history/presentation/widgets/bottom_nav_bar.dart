import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.green.shade100, shape: BoxShape.circle),
              child: Image.asset(
                'assets/home.png',
                height: 20,
              ),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/send.png',
              height: 20,
            ),
            label: 'Send'),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/history.png',
              height: 20,
            ),
            label: 'History'),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/scheduled.png',
              height: 20,
            ),
            label: 'Scheduled'),
      ],
    );
  }
}
