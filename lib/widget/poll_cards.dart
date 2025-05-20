import 'package:flutter/material.dart';

class PollCards extends StatelessWidget {
  const PollCards(
      {super.key,
      required this.image,
      required this.title,
      required this.endTime,
      required this.votes});

  final String image;
  final String title;
  final String endTime;
  final int votes;

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 200,
        width: MediaQuery.of(context).size.width * 0.5,
        child: Card(
          elevation: 5,
          color: Colors.white,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image.asset(
                image,
                // height: 100,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Text("End Time: $endTime",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Votes:${votes.toString()}",
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ]),
          ),
        ));
  }
}
