import 'package:flutter/material.dart';

class LingkaranLi extends StatefulWidget {
  const LingkaranLi({super.key});

  @override
  State<LingkaranLi> createState() => _LingkaranLiState();
}

class _LingkaranLiState extends State<LingkaranLi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Container(
        child: Text(
            "Lingkaran"
        ),
      ),
    );
  }
}
