import 'package:flutter/material.dart';
import 'package:frontend_student/common/constants/colors.dart';

class ImportantNotices extends StatelessWidget {
  const ImportantNotices({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Important Notices',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12.0),
          Container(
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8.0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5, // Adjust as needed
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(12.0),
                      leading: const Icon(
                        Icons.notification_important,
                        color: Colors.redAccent,
                      ),
                      title: Text(
                        'Notice ${index + 1}',
                        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
                      ),
                      subtitle: Text(
                        'Details of notice ${index + 1}',
                        style: const TextStyle(color: Colors.black54),
                      ),
                      trailing: const Text(
                        'Date',
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
