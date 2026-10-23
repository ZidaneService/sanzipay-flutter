import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color(0xFF0C3B2E),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Jean-Baptiste O.',
              style: TextStyle(color: Color(0xFFFFBA00), fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            _profileTile('Language (EN / FR)'),
            _profileTile('Security'),
            _profileTile('Notifications'),
            _profileTile('Help & Support'),
          ],
        ),
      ),
    );
  }

  Widget _profileTile(String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Text(title, style: const TextStyle(color: Colors.white)),
          const Spacer(),
          const Icon(Icons.chevron_right, color: Colors.white54),
        ],
      ),
    );
  }
}