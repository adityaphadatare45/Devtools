import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => HomescreenPage();
}

class HomescreenPage extends State<Homescreen> {
  
  final List<Map<String, String>> folderItems = [
    {'title': 'Flutter Notes', 'description': 'Useful widgets and patterns'},
    {'title': 'Dart Basics', 'description': 'Syntax and core concepts'},
    {'title': 'LeetCode Problems', 'description': 'Saved DSA problems'},
    {'title': 'GitHub Repo Ideas', 'description': 'Ideas for new projects'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffece8e8ff),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A4040),
        leading: const Icon(Icons.menu, color: Colors.white),
        title: const Text(
          'DevTools',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Top Icon Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.search, size: 32),
                Icon(Icons.check_box, size: 32),
                Icon(Icons.folder, size: 32),
              ],
            ),
            const SizedBox(height: 16),

            // GitHub Contribution Chart
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                color: Colors.white,
              ),
              child: Image.network(
                'https://ghchart.rshah.org/adityaphadatare45',
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),

            // Folder Items List
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: folderItems.length,
              itemBuilder: (context, index) {
                final item = folderItems[index];
                return Card(
                  color: const Color(0xFFFCF8FF),
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: const Icon(Icons.folder_open),
                    title: Text(item['title'] ?? ''),
                    subtitle: Text(item['description'] ?? ''),
                    onTap: () {
                      // Open folder detail
                    },
                  ),
                );
              },
            ),

            const SizedBox(height: 80), // spacing for FAB
          ],
        ),
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF4A4040),
        onPressed: () {
          // Add action
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
