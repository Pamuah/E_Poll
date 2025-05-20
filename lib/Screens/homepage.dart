import 'package:e_polls/widget/poll_cards.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final colorscheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorscheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Good Morning",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                  child: Container(
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                        color: colorscheme.tertiary,
                        borderRadius: BorderRadius.circular(10)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "12 Active polls",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: colorscheme.onTertiary),
                      ),
                    ),
                  ),

                  // search bar
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey[700]),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.grey[700],
                        size: 32.0,
                      ),
                    ),
                  ),
                ),
                const PollCards(
                  image: 'assets/knust logo.jpg',
                  endTime: '12/12/2023',
                  votes: 1232,
                  title: 'KNUST SRC ELECTION',
                ),
              ]),
        ),
      ),
    );
  }
}
