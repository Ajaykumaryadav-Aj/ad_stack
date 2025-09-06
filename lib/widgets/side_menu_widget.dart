import 'package:ad_stack/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(height: 50),
            const SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Text(
                      'AS',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Adstack',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            const Divider(color: Colors.grey),
            const CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 30,
              child: CircleAvatar(
                radius: 28,
              ),
            ),
            const Text(
              'Pooja Mishra',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              alignment: Alignment.center,
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: const Color.fromARGB(255, 161, 54, 242))),
              child: const Text('Admin'),
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: data.menu.length,
              itemBuilder: (context, index) => buildMenuEntry(data, index),
            ),
            Container(
              color: const Color.fromARGB(255, 125, 186, 237),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'WORKSPACE',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Icon(Icons.add)
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: ExpansionTile(
                title: Text(
                  "Adstacks",
                  style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: ExpansionTile(
                title: Text(
                  "Finance",
                  style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Setting"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  buildMenuEntry(SideMenuData data, int index) {
    final isSelected = selectedIndex == index;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? Colors.grey : Colors.transparent),
      child: InkWell(
        onTap: () => setState(() {
          selectedIndex == index;
        }),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
              child: Icon(
                data.menu[index].icon,
                color: isSelected ? Colors.black : Colors.black,
                size: 16,
              ),
            ),
            Text(
              data.menu[index].title,
              style: TextStyle(
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? Colors.black : Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
