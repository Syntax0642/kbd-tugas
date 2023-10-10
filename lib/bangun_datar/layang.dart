import 'package:flutter/material.dart';

class LayangLa extends StatefulWidget {
  const LayangLa({super.key});

  @override
  State<LayangLa> createState() => _LayangLaState();
}

class _LayangLaState extends State<LayangLa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        child: Text(
            "Layang-Layang"
        ),
      ),
    );
  }
}
