import "package:flutter/material.dart";
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewerScreen extends StatefulWidget {
  const PdfViewerScreen({super.key});

  @override
  State<PdfViewerScreen> createState() => _PdfViewerScreenState();
}

class _PdfViewerScreenState extends State<PdfViewerScreen> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pdf Viewer'),
      ),
      body: Column(
        children: [
          SizedBox(
            height:200,
            child: SfPdfViewer.network(
              'https://pdfobject.com/pdf/sample.pdf',
              key: _pdfViewerKey,
            ),
          ),
        ],
      ),
    );
  }
}
