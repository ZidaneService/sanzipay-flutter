import 'package:flutter/material.dart';

class GiftCardsScreen extends StatelessWidget {
  const GiftCardsScreen({super.key});

  final List<String> brands = const [
    'Amazon', 'Spotify', 'Netflix', 'Apple', 'Google Play', 'Jumia'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gift Cards'),
        backgroundColor: const Color(0xFF0C3B2E),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Buy or redeem gift cards',
              style: TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFBA00),
                      foregroundColor: const Color(0xFF0C3B2E),
                    ),
                    child: const Text('Buy & Send'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white54),
                    ),
                    child: const Text('Redeem'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text('Popular Brands', style: TextStyle(color: Colors.white, fontSize: 16)),
            const SizedBox(height: 12),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.4,
                ),
                itemCount: brands.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(brands[index], style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        const Spacer(),
                        const Text('10,000 - 100,000 XAF', style: TextStyle(color: Color(0xFFFFBA00), fontSize: 11)),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}