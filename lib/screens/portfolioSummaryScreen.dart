import 'package:flutter/material.dart';

class PortfolioSummaryScreen extends StatefulWidget {
  const PortfolioSummaryScreen({super.key});

  @override
  State<PortfolioSummaryScreen> createState() => _PortfolioSummaryScreenState();
}

class _PortfolioSummaryScreenState extends State<PortfolioSummaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reports Centre'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.blue,
            size: 35,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const Text(
              "Choose a report type and click 'Generate Report' to view detailed information",
              style: TextStyle(color: Colors.grey),
            ),
            _buildReportOption('Portfolio Summary'),
            const Text(
              'Overview of your current investment holdings and their performance',
              style: TextStyle(color: Colors.grey, fontSize: 11),
            ),
            const SizedBox(
              height: 8,
            ),
            _buildReportOption('Sharma Family'),
            _buildReportOption('Since Inception'),
            const Divider(color: Colors.grey),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(8),
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Portfolio Summary Sharma Family'),
                      Icon(Icons.chevron_right)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildReportOption(String title) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 8.0),
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(8.0),
      border: Border.all(color: Colors.blue),
    ),
    child: ListTile(
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}
