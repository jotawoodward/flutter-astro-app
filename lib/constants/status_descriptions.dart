import 'package:flutter_application_1/models/status_description.dart';

final List<StatusDescription> statusDescriptions = [
  StatusDescription(
    statusId: 'green',
    description: 'No significant activity',
    color: '0xff00FF00',
  ),
  StatusDescription(
    statusId: 'yellow',
    description: 'Minor geomagnetic activity',
    color: '0xffFFFF00',
  ),
  StatusDescription(
    statusId: 'amber',
    description: 'Amber alert: possible aurora',
    color: '0xffFF9900',
  ),
  StatusDescription(
    statusId: 'red',
    description: 'Red alert: aurora likely',
    color: '0xffFF0000',
  ),
];