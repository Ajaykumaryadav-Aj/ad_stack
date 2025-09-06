import 'package:flutter/material.dart';

class EthereumCard extends StatefulWidget {
  const EthereumCard({super.key});

  @override
  State<EthereumCard> createState() => _EthereumCardState();
}

class _EthereumCardState extends State<EthereumCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 147, 5, 172),
            Color.fromARGB(255, 18, 79, 159)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "ETHEREUM 2.0",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              "Top Rating Project",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const SizedBox(height: 5),
            const Text(
              "Trending project and high rating\n project created by team.",
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            const Spacer(),
            Container(
              alignment: Alignment.center,
              height: 30,
              width: 90,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 14, 13, 36),
                  borderRadius: BorderRadius.circular(6)),
              child: const Text(
                "Learn More",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
