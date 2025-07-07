import 'package:flutter/material.dart';

class PollPreviewScreen extends StatelessWidget {
  final List<Map<String, dynamic>> polls;

  const PollPreviewScreen({super.key, required this.polls});

  @override
  Widget build(BuildContext context) {
    final colorscheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorscheme.onPrimary,
      appBar: AppBar(
        title: const Text("Poll Preview"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ...polls.map((poll) {
            final category = poll['category'];
            final options = poll['options'] as List<String>;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8),
                ...options.map((opt) {
                  return ListTile(
                    leading: const Radio<String>(
                      value: "",
                      groupValue: null,
                      onChanged: null, //disabled state to prevent voting
                    ),
                    title: Text(opt),
                    subtitle: LinearProgressIndicator(
                      value: 0.0,
                      minHeight: 5,
                      backgroundColor: colorscheme.secondaryContainer,
                    ),
                    trailing: const Text("0"),
                  );
                }),
                const Divider(),
              ],
            );
          }),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.edit),
                label: const Text("Go Back to Edit"),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/home'); // confirm and maybe navigate or submit
                },
                icon: const Icon(Icons.check),
                label: const Text("Confirm"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
