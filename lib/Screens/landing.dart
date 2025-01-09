import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  static const routeName = '/Landing';
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Text(
              'Welcome To E-Polls',
              style: TextStyle(
                  color: colorScheme.onSurface,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const Image(
            image: AssetImage('assets/online-voting.png'),
            height: 200,
            width: 200,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text(
              'Continue to ...',
              style: TextStyle(
                  color: colorScheme.onSurface,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.8,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorScheme.primary,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Ensure content fits tightly
                  children: [
                    Text(
                      'Polls',
                      style: TextStyle(
                        color: colorScheme.onPrimary,
                        letterSpacing: 1.3,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                        width: 8), // Add spacing between text and icon
                    const Icon(Icons.arrow_forward_ios,
                        color: Colors.white), // Place the icon after the text
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.8,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorScheme.primary,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Ensure content fits tightly
                  children: [
                    Text(
                      'Create a Poll',
                      style: TextStyle(
                        color: colorScheme.onPrimary,
                        letterSpacing: 1.3,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                        width: 8), // Add spacing between text and icon
                    Icon(Icons.arrow_forward_ios,
                        color: colorScheme
                            .onPrimary), // Place the icon after the text
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
