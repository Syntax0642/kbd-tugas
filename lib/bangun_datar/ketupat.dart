import 'package:flutter/material.dart';

class KetupatKe extends StatefulWidget {
  const KetupatKe({super.key});

  @override
  State<KetupatKe> createState() => _KetupatKeState();
}

class _KetupatKeState extends State<KetupatKe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        child: Text(
            "Ketupat"
        ),
      ),
    );;
  }
}
