import 'package:flutter/material.dart';

class PdfViewerPage extends StatelessWidget {
  final String assetPath;
  const PdfViewerPage({required this.assetPath, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Resume'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.picture_as_pdf, size: 64, color: Colors.blue),
            SizedBox(height: 16),
            Text(
              'CV Viewer',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('PDF viewer not available in this version'),
          ],
        ),
      ),
    );
  }
}
