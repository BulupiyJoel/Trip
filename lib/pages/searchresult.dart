import 'package:flutter/material.dart';
import 'package:trip/components/tripcard.dart';

class SearchResult extends StatelessWidget {
  SearchResult({super.key});

  final now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade700,
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text(
          "Search Results",
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.green.shade700,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(color: Colors.green.shade700),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "May 12,2024",
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    // Existing date containers
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const TripCard();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}