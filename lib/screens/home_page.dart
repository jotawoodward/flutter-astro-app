import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/my_app_state.dart';
import 'package:flutter_application_1/widgets/acknowledgement.dart';
import 'package:flutter_application_1/widgets/error_message.dart';
import 'package:flutter_application_1/widgets/status_card.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var status = appState.status;
    var hasError = appState.error;

    return Scaffold(
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StatusCard(status: status), 
            if (hasError)
              ErrorMessage(),
            ElevatedButton(
              onPressed: () {
                appState.fetchStatus();
              },
              child: Text('Get Status'),
            ),
            const SizedBox(height: 32),
            const Acknowledgment(),
            ],
        ),
      ),
    );
  }
}
