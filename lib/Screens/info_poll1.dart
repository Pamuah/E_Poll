import 'package:e_polls/widget/custom_button.dart';
import 'package:e_polls/widget/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoPoll1 extends StatefulWidget {
  static const routeName = '/info_poll1';
  const InfoPoll1({super.key});

  @override
  State<InfoPoll1> createState() => _InfoPoll1State();
}

class _InfoPoll1State extends State<InfoPoll1> {
  TextEditingController pollTitleController = TextEditingController();
  TextEditingController pollAmountController =
      TextEditingController(); // Controller for amount

  String selectedPayment = "No fee"; // Default payment option

  @override
  Widget build(BuildContext context) {
    final colorscheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Info on Polls",
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Poll Title",
                style: TextStyle(
                  fontSize: 16,
                  color: colorscheme.onSurface,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, top: 5.0),
                child: CustomTextField(
                    label: 'Knust Elections', controller: pollTitleController),
              ),
              Text(
                "Add a flier",
                style: TextStyle(
                  fontSize: 16,
                  color: colorscheme.onSurface,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 20),
                child: Container(
                  height: 120,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(
                        style: BorderStyle.solid, color: colorscheme.primary),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/add_icon.png",
                      width: 80, // Adjusted size
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: Radio<String>(
                        value: 'No fee',
                        groupValue: selectedPayment,
                        onChanged: (value) {
                          setState(() {
                            selectedPayment = value!;
                          });
                          print('Selected Payment: $selectedPayment');
                        },
                      ),
                      title: const Text('Without fee per vote'),
                    ),
                    ListTile(
                      leading: Radio<String>(
                        value: 'Fee applied',
                        groupValue: selectedPayment,
                        onChanged: (value) {
                          setState(() {
                            selectedPayment = value!;
                          });
                          print('Selected Payment: $selectedPayment');
                        },
                      ),
                      title: const Text('Include fee per vote'),
                    ),
                  ],
                ),
              ),

              // Conditionally render the CustomTextField for the fee amount
              if (selectedPayment == "Fee applied")
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: CustomTextField(
                    label: "Amount (e.g. 0.2)",
                    controller:
                        pollAmountController, // Controller for the fee amount
                  ),
                ),

              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: CustomElevatedButton(
                    text: "Next   1/2",
                    onPressed: () {
                      Navigator.pushNamed(context, '/info_poll2');
                    },
                    backgroundColor: colorscheme.primary,
                    textColor: colorscheme.onPrimary,
                    borderRadius: 12.0,
                    padding: const EdgeInsets.all(12.0),
                    fontSize: 20),
              )
            ]),
      ),
    );
  }
}
