import 'package:e_polls/widget/analytics_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminPollDetails extends StatefulWidget {
  static const String routeName = "/adminPollDetails";
  const AdminPollDetails({super.key});

  @override
  State<AdminPollDetails> createState() => _AdminPollDetailsState();
}

class _AdminPollDetailsState extends State<AdminPollDetails> {
  @override
  Widget build(BuildContext context) {
    final colorscheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Poll Analytics",
          style: TextStyle(
              color: colorscheme.onSurface,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              CupertinoIcons.back,
              size: 30,
            )),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
          child: Column(
        children: [
          AnalyticsCard(
            title: "Presidential Poll",
            totalVotes: 1000,
            options: [
              OptionData(name: "Candidate A", votes: 450, percentage: 90),
              OptionData(name: "Candidate B", votes: 300, percentage: 30),
              OptionData(name: "Candidate C", votes: 250, percentage: 25),
            ],
          ),
        ],
      )),
    );
  }
}
