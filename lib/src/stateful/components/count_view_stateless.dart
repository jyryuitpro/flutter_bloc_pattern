import 'package:flutter/material.dart';

class CountViewStateless extends StatelessWidget {
  final int count;

  const CountViewStateless({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("CountViewStateless Build !!");
    return Center(
      child: Text(
        count.toString(),
        style: TextStyle(fontSize: 80),
      ),
    );
  }
}
