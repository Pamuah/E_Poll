import 'package:e_polls/Screens/pollPreview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/custom_textfield.dart';

class InfoPoll2 extends StatefulWidget {
  static const routeName = '/info_poll2';
  const InfoPoll2({super.key});

  @override
  State<InfoPoll2> createState() => _InfoPoll2State();
}

class _InfoPoll2State extends State<InfoPoll2> {
  final List<PollBlock> pollBlocks = [];

  @override
  void initState() {
    super.initState();
    addPollBlock(); // start with one block
  }

  void addPollBlock() {
    setState(() {
      pollBlocks.add(PollBlock());
    });
  }

  @override
  void dispose() {
    for (var block in pollBlocks) {
      block.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorscheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Create Poll",
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
      backgroundColor: colorscheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ...pollBlocks.map((block) => block.build(context, colorscheme)),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Add more categories",
                      style: TextStyle(
                        fontSize: 16,
                        color: colorscheme.onSurface,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    GestureDetector(
                      onTap: addPollBlock,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 30,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  List<Map<String, dynamic>> finalPolls = pollBlocks
                      .map((block) {
                        return {
                          'category': block.categoryController.text.trim(),
                          'options': block.optionControllers
                              .map((c) => c.text.trim())
                              .where((text) => text.isNotEmpty)
                              .toList(),
                        };
                      })
                      .where((poll) =>
                          poll['category'] != '' &&
                          (poll['options'] as List).length >= 2)
                      .toList();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PollPreviewScreen(polls: finalPolls),
                    ),
                  );
                },
                child: Text("Confirm & Preview Poll"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ------------------- Poll Block Class -----------------------

class PollBlock {
  final TextEditingController categoryController = TextEditingController();
  final List<TextEditingController> optionControllers = [
    TextEditingController(),
    TextEditingController(),
  ];

  void addOption() {
    optionControllers.add(TextEditingController());
  }

  Widget build(BuildContext context, ColorScheme colorScheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Category",
          style: TextStyle(
            fontSize: 16,
            color: colorScheme.onSurface,
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0, bottom: 20),
          child: CustomTextField(
            label: "eg. Most Popular",
            controller: categoryController,
          ),
        ),
        Text(
          "OPTIONS",
          style: TextStyle(
            fontSize: 16,
            color: colorScheme.onSurface,
            fontWeight: FontWeight.w600,
          ),
        ),
        ...optionControllers.map((controller) => Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: CustomTextField(
                label: "eg. John Doe",
                controller: controller,
              ),
            )),
        GestureDetector(
          onTap: () {
            addOption();
            (context as Element).markNeedsBuild(); // trigger rebuild
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: Icon(
              Icons.add,
              color: colorScheme.primary,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  void dispose() {
    categoryController.dispose();
    for (var c in optionControllers) {
      c.dispose();
    }
  }
}
