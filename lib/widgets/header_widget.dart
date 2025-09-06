
import 'package:ad_stack/utils/responsive.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (!Responsive.isDesktop(context))
          InkWell(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: const Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ),
        const Expanded(
            child: Text(
          'Home',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        )),
        const Expanded(
          child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 14, 2, 25),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.white),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))))),
        ),
        const SizedBox(width: 10),
        if (Responsive.isMobile(context))
          InkWell(
            onTap: () => Scaffold.of(context).openEndDrawer(),
            child: const CircleAvatar(
              child: Text('👨'),
              radius: 26,
            ),
          )
      ],
    );
  }
}
