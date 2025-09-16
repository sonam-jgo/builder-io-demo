import 'package:flutter/material.dart';

class BackgroundScreen extends StatelessWidget {
  final Widget? child;
  
  const BackgroundScreen({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF292829), // Top color from Figma
              Color(0xFF070707), // Bottom color from Figma
            ],
          ),
        ),
        child: Stack(
          children: [
            // Decorative purple elements
            Positioned(
              top: 400,
              right: -50,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: const Color(0xFF6D55FF).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            Positioned(
              top: 500,
              left: -30,
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0xFF6D55FF).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(75),
                ),
              ),
            ),
            Positioned(
              bottom: 200,
              right: -20,
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: const Color(0xFF6D55FF).withOpacity(0.25),
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            ),
            // Overlay gradient for depth
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.1),
                  ],
                ),
              ),
            ),
            // Content overlay
            if (child != null)
              SafeArea(
                child: child!,
              ),
          ],
        ),
      ),
    );
  }
}
