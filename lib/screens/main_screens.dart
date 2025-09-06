
import 'package:ad_stack/utils/responsive.dart';
import 'package:ad_stack/widgets/dashboard_widget.dart';
import 'package:ad_stack/widgets/profile_side_widget%20.dart';
import 'package:ad_stack/widgets/side_menu_widget.dart';
import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer: !isDesktop
          ? SizedBox(
              width: 250,
              child: SideMenu(),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: SideProfileWidget(),
            )
          : null,
      body: SafeArea(
          child: Row(
        children: [
          if (isDesktop)
            Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenu(),
              ),
            ),
          Expanded(
            flex: 7,
            child: DashboardWidget(),
          ),
          if (isDesktop) Expanded(flex: 3, child: SideProfileWidget())
        ],
      )),
    );
  }
}

