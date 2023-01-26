import 'package:flutter/material.dart';

class PercentageScreen extends StatefulWidget {
  final String name;    
  const PercentageScreen({super.key,required this.name});

  @override
  State<PercentageScreen> createState() => _PercentageScreenState();
}

class _PercentageScreenState extends State<PercentageScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percentage calculator'),
        centerTitle: true,
      ),
      body: Center(
        child:  Text("${widget.name}"),
      ),
    );
  }
}