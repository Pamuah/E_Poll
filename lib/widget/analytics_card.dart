import 'package:e_polls/const/themeExtension.dart';
import 'package:flutter/material.dart';

class AnalyticsCard extends StatelessWidget {
  final String title;
  final List<OptionData> options;
  final int totalVotes;

  const AnalyticsCard({
    super.key,
    required this.title,
    required this.options,
    required this.totalVotes,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorscheme = Theme.of(context).colorScheme;
    final extendedColors = Theme.of(context).extension<ExtraColors>()!;
    // Find max percentage to highlight the winner
    final double maxPercentage =
        options.map((e) => e.percentage).reduce((a, b) => a > b ? a : b);

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: extendedColors.darkGray,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: colorscheme.onPrimary),
            ),
            const SizedBox(height: 12),
            ...options.map((option) {
              final isWinner = option.percentage == maxPercentage;

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(option.name,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[200])),
                        const Spacer(),
                        Text(
                          "${option.votes} votes • ${option.percentage.toStringAsFixed(1)}%",
                          style: TextStyle(
                              color: Colors.grey[200],
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: LinearProgressIndicator(
                        value: option.percentage / 100,
                        backgroundColor: Colors.grey.shade300,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          isWinner ? extendedColors.golden : Colors.grey,
                        ),
                        minHeight: 8,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
            const SizedBox(height: 12),
            Text("Total Votes: $totalVotes",
                style: TextStyle(color: colorscheme.onPrimary, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

class OptionData {
  final String name;
  final int votes;
  final double percentage;

  OptionData({
    required this.name,
    required this.votes,
    required this.percentage,
  });
}
