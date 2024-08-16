import 'package:flutter/material.dart';
import 'package:frontend_student/common/constants/colors.dart';

class AchievementsAndViolations extends StatefulWidget {
  const AchievementsAndViolations({super.key});

  @override
  AchievementsAndViolationsState createState() => AchievementsAndViolationsState();
}

class AchievementsAndViolationsState extends State<AchievementsAndViolations> {
  final int _itemsPerPage = 3; // Number of items per page
  int _currentPage = 1;
  final List<String> _achievements = List.generate(10, (index) => 'Achievement ${index + 1}');
  final List<String> _violations = List.generate(10, (index) => 'Violation ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         // Achievements Section
          _buildSection(
            title: 'Achievements',
            items: _achievements,
          ),

          // Violations Section
          _buildSection(
            title: 'Violations',
            items: _violations,
          ),
        ],
      ),
    );
  }

  Widget _buildSection({required String title, required List<String> items}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8.0),
        Column(
          children: List.generate(
            (_currentPage * _itemsPerPage > items.length) ? items.length % _itemsPerPage : _itemsPerPage,
            (index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Icon(
                      title == 'Achievements' ? Icons.star : Icons.warning,
                      color: title == 'Achievements' ? Colors.orangeAccent : Colors.redAccent,
                    ),
                    const SizedBox(width: 12.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            items[index],
                            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
                          ),
                          const SizedBox(height: 4.0),
                          const Text(
                            'Details here',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12.0),
                    const Text(
                      'Date',
                      style: TextStyle(color: Colors.grey, fontSize: 12.0),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        if (items.length > _itemsPerPage)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      if (_currentPage > 1) {
                        _currentPage--;
                      }
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  ),
                  child: const Text('Previous'),
                ),
                const SizedBox(width: 16.0),
                TextButton(
                  onPressed: () {
                    setState(() {
                      if (_currentPage * _itemsPerPage < items.length) {
                        _currentPage++;
                      }
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  ),
                  child: const Text('Next'),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
