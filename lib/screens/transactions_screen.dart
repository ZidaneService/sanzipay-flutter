import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  final List<Map<String, dynamic>> transactions = const [
    {'name': 'MTN Cameroon', 'type': 'Mobile Top Up', 'amount': '-5,000 XAF', 'positive': false},
    {'name': 'Orange Money', 'type': 'Transfer', 'amount': '-20,000 XAF', 'positive': false},
    {'name': 'Salary Deposit', 'type': 'Income', 'amount': '+350,000 XAF', 'positive': true},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transactions'),
        backgroundColor: const Color(0xFF0C3B2E),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '245,680.50 XAF',
                style: TextStyle(color: Color(0xFFFFBA00), fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                final tx = transactions[index];
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
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
                            Text(tx['name'], style: const TextStyle(color: Colors.white)),
                            Text(tx['type'], style: const TextStyle(color: Colors.white54, fontSize: 12)),
                          ],
                        ),
                      ),
                      Text(
                        tx['amount'],
                        style: TextStyle(
                          color: tx['positive'] ? Colors.green : const Color(0xFFFFBA00),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}