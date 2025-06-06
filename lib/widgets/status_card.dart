import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/status_descriptions.dart';
import 'package:flutter_application_1/models/status_description.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
    required this.status,
  });

  final String status;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); 

    // Find the description object for the current status
    final desc = statusDescriptions.firstWhere(
      (d) => d.statusId?.toLowerCase() == status.toLowerCase(),
      orElse: () => StatusDescription(statusId: '', color: null),
    );

    // Use the color from the description or fall back to the default color
    final cardColor = desc.color != null
    ? Color(int.parse(desc.color!.replaceFirst('#', '0xff')))
    : theme.colorScheme.primary;

    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );
    return Card(
      color: cardColor, 
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(desc.description ?? 'Unknown', style: style, 
          semanticsLabel: status,),
      ),
    );
  }
}