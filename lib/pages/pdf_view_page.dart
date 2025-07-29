import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
// Web-specific imports
import 'dart:html' as html;

class PdfViewerPage extends StatelessWidget {
  final String assetPath;
  const PdfViewerPage({required this.assetPath, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Abir Cherif - CV',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue.shade900,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.download, color: Colors.white),
            onPressed: () {
              // Trigger download
              if (kIsWeb) {
                const url =
                    'https://abir739.github.io/personal_website/assets/pdf/Abir_Cherif_CV_2025.pdf';
                final anchor = html.AnchorElement(href: url)
                  ..setAttribute('download', 'Abir_Cherif_CV_2025.pdf')
                  ..click();
              }
            },
            tooltip: 'Download CV',
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.picture_as_pdf,
                size: 120,
                color: Colors.blue.shade700,
              ),
              const SizedBox(height: 24),
              Text(
                'Abir Cherif - CV',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Choose an option to view or download the CV',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              MediaQuery.of(context).size.width < 600
                  ? Column(
                      children: [
                        ElevatedButton.icon(
                          onPressed: () async {
                            if (kIsWeb) {
                              const String cvUrl =
                                  'https://abir739.github.io/personal_website/assets/pdf/Abir_Cherif_CV_2025.pdf';
                              await launchUrl(Uri.parse(cvUrl));
                            } else {
                              await launchUrl(Uri.parse(
                                  'assets/pdf/Abir_Cherif_CV_2025.pdf'));
                            }
                          },
                          icon: const Icon(Icons.visibility),
                          label: const Text('View CV'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade700,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                          ),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton.icon(
                          onPressed: () {
                            if (kIsWeb) {
                              const String cvUrl =
                                  'https://abir739.github.io/personal_website/assets/pdf/Abir_Cherif_CV_2025.pdf';
                              final anchor = html.AnchorElement(href: cvUrl)
                                ..setAttribute(
                                    'download', 'Abir_Cherif_CV_2025.pdf')
                                ..click();
                            }
                          },
                          icon: const Icon(Icons.download),
                          label: const Text('Download CV'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.shade600,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                          ),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () async {
                            if (kIsWeb) {
                              const String cvUrl =
                                  'https://abir739.github.io/personal_website/assets/pdf/Abir_Cherif_CV_2025.pdf';
                              await launchUrl(Uri.parse(cvUrl));
                            } else {
                              await launchUrl(Uri.parse(
                                  'assets/pdf/Abir_Cherif_CV_2025.pdf'));
                            }
                          },
                          icon: const Icon(Icons.visibility),
                          label: const Text('View CV'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade700,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                          ),
                        ),
                        const SizedBox(width: 16),
                        ElevatedButton.icon(
                          onPressed: () {
                            if (kIsWeb) {
                              const String cvUrl =
                                  'https://abir739.github.io/personal_website/assets/pdf/Abir_Cherif_CV_2025.pdf';
                              final anchor = html.AnchorElement(href: cvUrl)
                                ..setAttribute(
                                    'download', 'Abir_Cherif_CV_2025.pdf')
                                ..click();
                            }
                          },
                          icon: const Icon(Icons.download),
                          label: const Text('Download CV'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.shade600,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
