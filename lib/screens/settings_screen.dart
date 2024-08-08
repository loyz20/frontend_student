import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.account_circle, color: Colors.blueAccent),
            title: const Text('Akun'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16.0, color: Colors.grey),
            onTap: () {
              // Navigate to account settings screen
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.notifications, color: Colors.blueAccent),
            title: const Text('Notifikasi'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16.0, color: Colors.grey),
            onTap: () {
              // Navigate to notification settings screen
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.lock, color: Colors.blueAccent),
            title: const Text('Privasi'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16.0, color: Colors.grey),
            onTap: () {
              // Navigate to privacy settings screen
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.language, color: Colors.blueAccent),
            title: const Text('Bahasa'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16.0, color: Colors.grey),
            onTap: () {
              // Navigate to language settings screen
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.help, color: Colors.blueAccent),
            title: const Text('Bantuan'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16.0, color: Colors.grey),
            onTap: () {
              // Navigate to help screen
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.info, color: Colors.blueAccent),
            title: const Text('Tentang'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16.0, color: Colors.grey),
            onTap: () {
              // Navigate to about screen
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.redAccent),
            title: const Text('Logout', style: TextStyle(color: Colors.redAccent)),
            onTap: () {
              // Handle logout
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Konfirmasi Logout'),
                    content: const Text('Apakah Anda yakin ingin logout?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Batal'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          // Implement logout functionality
                        },
                        child: const Text('Logout'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
