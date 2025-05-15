import 'package:flutter/material.dart';

class SearchBarApotek extends StatelessWidget {
  const SearchBarApotek({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Color(0xFFE2DAD6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Input Text
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: "Temukan",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          // Icon Search di kotak terpisah
          Container(
            height: 48,
            width: 48,
            margin: const EdgeInsets.only(right: 2),
            decoration: BoxDecoration(
              color: Color(0xFF7FA1C3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
