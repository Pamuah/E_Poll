import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const/themeExtension.dart';

class AdminsHomePage extends StatefulWidget {
  const AdminsHomePage({super.key});

  @override
  State<AdminsHomePage> createState() => _AdminsHomePageState();
}

class _AdminsHomePageState extends State<AdminsHomePage> {
  String status = "Active";
  final List<Map<String, dynamic>> utils = [
    {
      "id": 1,
      "name": "Poll Analytics",
    },
    {
      "id": 2,
      "name": "Earnings Summary",
    },
    {
      "id": 3,
      "name": "Voter Insights",
    },
  ];
  @override
  Widget build(BuildContext context) {
    final extendedColors = Theme.of(context).extension<ExtraColors>()!;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: extendedColors.adminBackground,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.25,
              decoration: BoxDecoration(
                  color: extendedColors.darkGray,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  )),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Admin's Dashboard",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: colorScheme.onPrimary,
                      ),
                    )
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: utils.map((item) {
                  return Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2), // soft shadow
                            blurRadius: 4, // how much the shadow blurs
                            offset: const Offset(
                                0, 4), // X and Y offset of the shadow
                          ),
                        ],
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        item['name'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
              child: Text('Your Polls',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3), // soft shadow
                        blurRadius: 6, // how much the shadow blurs
                        offset:
                            const Offset(0, 4), // X and Y offset of the shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(children: [
                      Container(
                        width: 100,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Poll Title: SRC Polls 2023',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: colorScheme.primary,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        text: 'Status: ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: colorScheme
                                              .onSurface, // base color for the label
                                        ),
                                        children: [
                                          TextSpan(
                                            text: status, // "Active" or "Ended"
                                            style: TextStyle(
                                              color: status == "Active"
                                                  ? Colors.green
                                                  : Colors.red,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    Text(
                                      'Type: Free Poll',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: colorScheme.onSurface,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                'Start Time: 03/05/2023, 10:00 AM',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: colorScheme.onSurface,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'End Time: 04/05/2023, 10:00 AM',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: colorScheme.onSurface,
                                ),
                              )
                            ],
                          ))
                    ]),
                  )),
            )
          ]),
    );
  }
}
