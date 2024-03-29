import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
          child: const Text('Main'),
        ),

        ...appMenuItem
          .sublist( 0,3 )
          .map((item) => NavigationDrawerDestination(
            icon: Icon(item.icon),
            label: Text(item.title)
          )
        ),

        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(),
        ),
        
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
          child: Text('More options'),
        ),

        ...appMenuItem
          .sublist( 3 )
          .map((item) => NavigationDrawerDestination(
            icon: Icon(item.icon),
            label: Text(item.title)
          )
        ),

      ],
    );
  }
}