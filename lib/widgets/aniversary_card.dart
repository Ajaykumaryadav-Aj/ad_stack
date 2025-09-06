import 'package:flutter/material.dart';

class AniversaryCard extends StatelessWidget {
  const AniversaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF362F4F), // Dark background color from your image
        borderRadius: BorderRadius.circular(20),
      ),
      width: double.infinity, // You can adjust this to fit your needs
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.auto_awesome, color: Colors.yellow),
              SizedBox(width: 5),
              Text(
                "Anniversary",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(width: 5),
              Icon(Icons.auto_awesome, color: Colors.yellow),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: Text('👩', style: TextStyle(fontSize: 24)),
              ),
              SizedBox(width: 10),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: Text('🙎‍♀️', style: TextStyle(fontSize: 24)),
              ),
              SizedBox(width: 10),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: Text('🙎‍♀️', style: TextStyle(fontSize: 24)),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const IntrinsicHeight(
            child: Row(
              children: [
                SizedBox(width: 22),
                Text(
                  "Total",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
                SizedBox(width: 20),
                VerticalDivider(
                  color: Colors.grey,
                  thickness: 2,
                ),
                Text(
                  "3",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                VerticalDivider(
                  color: Colors.grey,
                  thickness: 2,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Define the action when button is pressed
            },
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  const Color(0xFF8A6DFF), // Button background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // Rounded button
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.double_arrow,
                  color: Colors.white,
                ),
                Text(
                  "Anniversary Wishing",
                  style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 244, 249, 250)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
