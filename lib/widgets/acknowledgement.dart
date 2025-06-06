import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Acknowledgment extends StatelessWidget {
  const Acknowledgment({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final url = Uri.parse('https://aurorawatch.lancs.ac.uk/');
        if (await canLaunchUrl(url)) {
          await launchUrl(url, mode: LaunchMode.externalApplication);
        }
      },
      child: Text.rich(
        TextSpan(
          children: [
            const TextSpan(
              text: 'Data provided by ',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            TextSpan(
              text: 'AuroraWatch UK',
              style: const TextStyle(
                fontSize: 12,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}