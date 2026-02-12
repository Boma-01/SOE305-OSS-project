// main.dart
//
// Purpose: Entry point for the FUTO Hostel Reservation application.
// Responsibility: Initializes the Flutter app and sets the root widget (HostelReservationApp).

import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'presentation/screens/splash_screen.dart';

void main() {
  runApp(const HostelReservationApp());
}

/// The root widget of the application.
/// Configures global settings like app title, theme, and initial screen.
class HostelReservationApp extends StatelessWidget {
  const HostelReservationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FUTO Hostel Reservation',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
