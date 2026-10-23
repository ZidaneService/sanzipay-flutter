import 'package:flutter/material.dart';

class CardDetailScreen extends StatelessWidget {
  const CardDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Virtual Debit Card'),
        backgroundColor: const Color(0xFF0C3B2E),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF0D664D),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('SANZIPAY', style: TextStyle(color: Color(0xFFFFBA00), fontSize: 20)),
                  Spacer(),
                  Text('4000 1234 5678 9012', style: TextStyle(color: Colors.white, fontSize: 18)),
                  Text('VALID THRU 12/27', style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text('CARD CONTROLS', style: TextStyle(color: Colors.white70)),
            const SizedBox(height: 12),
            _controlTile('Freeze Card', 'Temporarily lock your card'),
            _controlTile('Set Limits', 'Manage spending limits'),
            _controlTile('Change PIN', 'Update your card PIN'),
          ],
        ),
      ),
    );
  }

  Widget _controlTile(String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(color: Colors.white)),
                Text(subtitle, style: const TextStyle(color: Colors.white54, fontSize: 12)),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: Colors.white54),
        ],
      ),
    );
  }
}