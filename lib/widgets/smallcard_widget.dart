
import 'package:flutter/material.dart';

class SmallcardWidget extends StatelessWidget {
  const SmallcardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (isMobile) {
          return SingleChildScrollView(
            child: Column(
              children: [
                _buildAllProjectsCard(),
                _buildTopCreatorsCard(),
              ],
            ),
          );
        } else {
          return Row(
            children: [
              Expanded(child: _buildAllProjectsCard(height: 260)),
              Expanded(child: _buildTopCreatorsCard(height: 260)),
            ],
          );
        }
      },
    );
  }

  // ---------------- ALL PROJECTS CARD ----------------
  Widget _buildAllProjectsCard({double? height}) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: height ?? 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF0D1440),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'All Projects',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildProjectTile(
                  bgColor: const Color(0xFFED1E79),
                  title: "Technology behind the Blockchain",
                  subtitle: "Project #1",
                ),
                _buildProjectTile(
                  bgColor: const Color(0xFF1C2340),
                  title: "Decentralized App Design",
                  subtitle: "Project #2",
                ),
                _buildProjectTile(
                  bgColor: const Color(0xFF1C2340),
                  title: "AI for NFTs",
                  subtitle: "Project #3",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ---------------- TOP CREATORS CARD ----------------
  Widget _buildTopCreatorsCard({double? height}) {
    const nameFlex = 5;
    const artworksFlex = 2;
    const ratingFlex = 3;

    return Container(
      margin: const EdgeInsets.all(8),
      height: height ?? 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF0D1440),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Top Creators',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),

          // HEADER
          Row(
            children: const [
              Expanded(
                flex: nameFlex,
                child: Text("Name",
                    style: TextStyle(color: Colors.white70, fontSize: 11)),
              ),
              Expanded(
                flex: artworksFlex,
                child: Text("Artworks",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 11)),
              ),
              Expanded(
                flex: ratingFlex,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text("Rating",
                      style: TextStyle(color: Colors.white70, fontSize: 11)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Container(height: 1, color: Colors.white12),
          const SizedBox(height: 6),

          // LIST
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _creatorRow(
                  nameFlex: nameFlex,
                  artworksFlex: artworksFlex,
                  ratingFlex: ratingFlex,
                  avatar: "https://i.pravatar.cc/100?img=1",
                  name: "@maddison_c21",
                  artworks: "9821",
                  rating: 0.9,
                ),
                _creatorRow(
                  nameFlex: nameFlex,
                  artworksFlex: artworksFlex,
                  ratingFlex: ratingFlex,
                  avatar: "https://i.pravatar.cc/100?img=2",
                  name: "@karl.will02",
                  artworks: "7032",
                  rating: 0.7,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // CREATOR ROW
  Widget _creatorRow({
    required int nameFlex,
    required int artworksFlex,
    required int ratingFlex,
    required String avatar,
    required String name,
    required String artworks,
    required double rating,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Expanded(
            flex: nameFlex,
            child: Row(
              children: [
                CircleAvatar(backgroundImage: NetworkImage(avatar), radius: 16),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: artworksFlex,
            child: Text(
              artworks,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          Expanded(
            flex: ratingFlex,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: rating,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF6A5AE0), Color(0xFF9D4EDD)],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // PROJECT TILE
  Widget _buildProjectTile({
    required String title,
    required String subtitle,
    required Color bgColor,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(title,
            style: const TextStyle(fontSize: 12, color: Colors.white)),
        subtitle: Row(
          children: [
            Text(subtitle,
                style: const TextStyle(fontSize: 10, color: Colors.white70)),
            const SizedBox(width: 6),
            const Text(
              "See project details",
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  decoration: TextDecoration.underline),
            ),
          ],
        ),
        trailing: const Icon(Icons.edit, size: 14, color: Colors.white),
      ),
    );
  }
}

