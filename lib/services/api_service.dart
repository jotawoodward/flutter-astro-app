import 'package:flutter_application_1/models/status_result.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart' as xml;

class StatusService {
  static Future<StatusResult> fetchStatus() async {
    try {
      final response = await http.get(Uri.parse('https://aurorawatch-api.lancs.ac.uk/0.2/status/current-status.xml'));
      if (response.statusCode == 200) {
        final document = xml.XmlDocument.parse(response.body);
        final statusElement = document.findAllElements('site_status').first;
        final statusId = statusElement.getAttribute('status_id');
        return StatusResult(statusId: statusId);
      } else {
        return StatusResult(error: true, errorMessage: 'Failed to load status: ${response.statusCode}');
      }
    } catch (e) {
      return StatusResult(error: true, errorMessage:'Error: $e');
    }
  }
}