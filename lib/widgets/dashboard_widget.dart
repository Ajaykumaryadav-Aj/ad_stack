
import 'package:ad_stack/utils/responsive.dart';
import 'package:ad_stack/widgets/ethereum_card.dart';
import 'package:ad_stack/widgets/header_widget.dart';
import 'package:ad_stack/widgets/line_chart_widget.dart';
import 'package:ad_stack/widgets/profile_side_widget%20.dart';
import 'package:ad_stack/widgets/smallcard_widget.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 18),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: HeaderWidget(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: EthereumCard(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: SmallcardWidget(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: LineChartWidget(),
          ),
          const SizedBox(
            height: 18,
          ),
          if (Responsive.isTablet(context))const SideProfileWidget()
        ],
      ),
    );
  }
}
