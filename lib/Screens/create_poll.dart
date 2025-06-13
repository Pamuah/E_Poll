import 'package:e_polls/widget/custom_textfield.dart';
import 'package:flutter/material.dart';

class CreatePoll extends StatefulWidget {
  const CreatePoll({super.key});

  @override
  State<CreatePoll> createState() => _CreatePollState();
}

class _CreatePollState extends State<CreatePoll> {
  @override
  TextEditingController questionController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Poll"),
      ),
      body: Column(
        children: [
          Text("Question"),
          CustomTextField(
            controller: questionController,
            label: 'Ask Question',
          )
        ],
      ),
    );
  }
}
