import 'package:flutter/material.dart';

class PollPreviewScreen extends StatefulWidget {
  final List<Map<String, dynamic>> polls;

  const PollPreviewScreen({super.key, required this.polls});

  @override
  State<PollPreviewScreen> createState() => _PollPreviewScreenState();
}

class _PollPreviewScreenState extends State<PollPreviewScreen> {
  Map<String, String> selectedOptions = {};
  Map<String, Map<String, int>> voteCounts = {};

  @override
  void initState() {
    super.initState();
    for (var poll in widget.polls) {
      final category = poll['category'];
      final options = poll['options'] as List<String>;
      voteCounts[category] = {for (var opt in options) opt: 0};
    }
  }

  void _vote(String category, String option) {
    setState(() {
      selectedOptions[category] = option;
      voteCounts[category]![option] = voteCounts[category]![option]! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Poll Preview")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: widget.polls.map((poll) {
          final category = poll['category'];
          final options = poll['options'] as List<String>;
          final votes = voteCounts[category]!;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(category,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18)),
              ...options.map((opt) {
                int totalVotes = votes.values.fold(0, (a, b) => a + b);
                int optionVotes = votes[opt]!;
                double percentage =
                    totalVotes == 0 ? 0 : (optionVotes / totalVotes);
                return ListTile(
                  leading: Radio<String>(
                    value: opt,
                    groupValue: selectedOptions[category],
                    onChanged: (val) => _vote(category, opt),
                  ),
                  title: Text(opt),
                  subtitle: LinearProgressIndicator(
                    value: percentage,
                    minHeight: 5,
                  ),
                  trailing: Text(optionVotes.toString()),
                );
              }).toList(),
              const Divider(),
            ],
          );
        }).toList(),
      ),
    );
  }
}
