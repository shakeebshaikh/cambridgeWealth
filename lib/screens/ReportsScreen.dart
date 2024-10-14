import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.chevron_left,
                    color: Colors.blue,
                    size: 35,
                  )),
              title: const Text('Reports Centre'),
              centerTitle: true,
            ),
            body: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const Text(
                    'Which Report do you want to generate today?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        _buildReportOption('Portfolio Summary',
                            'Overview of your current investment holdings and their perfomance.'),
                        _buildReportOption('Capital Gains',
                            'Summary of gains/losses generated from your investment for filling your ITR.'),
                        _buildReportOption('Cash Flow',
                            'View cash inflows & outflows to your folio from your registered bank account.'),
                        _buildReportOption('Transaction Statement',
                            'Record of all investment transactions for each holding in your portfolio.'),
                        _buildReportOption('Statements of Accounts',
                            'Comprehensive report on a fund\'s key information & performance.'),
                        const Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Previously Generated Reports',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'View all',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )),
                          ],
                        ),
                        const SizedBox(height: 16),
                        // Horizontal list of generated reports
                        Container(
                          height: 150,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              _buildGeneratedReportCard('Transaction Statement',
                                  Icons.article, Icons.download),
                              _buildGeneratedReportCard('Statements of Account',
                                  Icons.article, Icons.download),
                              _buildGeneratedReportCard('Capital Gains',
                                  Icons.article, Icons.download),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        return Container(
          width: double.infinity,
            child: const Row(
              children: [
                Column(
                  children: [
                    Text('Cambridge wealth Logo'),
                    ListTile(
                     title: Icon(Icons.shield), 
                     subtitle: Text('Investments'),
                    )
                    ],
                ),
              ],
            ),
          );
      },
    );
  }
}

Widget _buildGeneratedReportCard(
    String title, IconData leadingIcon, IconData trailingIcon) {
  return Container(
    width: 120,
    margin: const EdgeInsets.only(right: 12),
    decoration: BoxDecoration(
      color: Colors.black54,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(leadingIcon, size: 26.0, color: Colors.yellow),
              Icon(trailingIcon, size: 26.0, color: Colors.yellow),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
    ),
  );
}

Widget _buildReportOption(String title, String subtitle) {
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
      subtitle: Text(
        subtitle,
        style: const TextStyle(
            color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
      ),
      onTap: () {},
    ),
  );
}
