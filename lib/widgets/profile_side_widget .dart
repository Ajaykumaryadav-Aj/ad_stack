
import 'package:ad_stack/utils/responsive.dart';
import 'package:ad_stack/widgets/aniversary_card.dart';
import 'package:ad_stack/widgets/birdthday_card.dart';
import 'package:ad_stack/widgets/calender_widget.dart';
import 'package:flutter/material.dart';

class SideProfileWidget extends StatelessWidget {
  const SideProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color.fromARGB(255, 2, 9, 26),
        child: Column(
          children: [
            const SizedBox(height: 18),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.book),
                  Icon(Icons.notification_add),
                  Icon(Icons.power_settings_new_outlined),
                  CircleAvatar(
                    radius: 20,
                    child: Text('👨'),
                  )
                ],
              ),
            ),
            const SizedBox(height: 18),
            Text(
              'GENERAL 10:00 AM TO 7:00 PM',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Responsive.isMobile(context)
                ? const SizedBox(height: 25)
                : const SizedBox(height: 23),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: CalenderWidget(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: const BirdthdayCard(),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: const AniversaryCard(),
            )
          ],
        ),
      ),
    );
  }
}
