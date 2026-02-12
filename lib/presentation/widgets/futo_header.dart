// presentation/widgets/futo_header.dart
// 
// Purpose: Reusable brand header.
// Responsibility: Displays the centered FUTO logo with consistent styling.

import 'package:flutter/material.dart';

// [LABEL: FUTO HEADER WIDGET] - Reusable logo header.
class FutoHeader extends StatelessWidget {
  const FutoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Center(
        child: Container(
          height: 80,
          width: 80,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(
            'assets/images/futo_logo.png',
            fit: BoxFit.cover,
            // Use errorBuilder to show a placeholder if asset is missing during dev
            errorBuilder: (context, error, stackTrace) {
              return const Icon(
                Icons.school, // Placeholder icon
                size: 40,
                color: Color(0xFF008000),
              );
            },
          ),
        ),
      ),
    );
  }
}
