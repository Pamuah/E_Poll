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
  TextEditingController categoryController = TextEditingController();
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Category",
              style: TextStyle(
                fontSize: 16,
                color: colorscheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 20),
              child: CustomTextField(
                label: "eg. Most Popular",
                // icon: const Icon(CupertinoIcons.mail),
                controller: categoryController,
              ),
            ),
            Text(
              "OPTIONS",
              style: TextStyle(
                fontSize: 16,
                color: colorscheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: CustomTextField(
                label: "eg. John Doe",
                // icon: const Icon(CupertinoIcons.mail),
                controller: categoryController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 20),
              child: CustomTextField(
                label: "eg. Alice Arnold",
                // icon: const Icon(CupertinoIcons.mail),
                controller: categoryController,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Icon(
                Icons.add,
                color: colorscheme.primary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
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
                  Container(
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
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
