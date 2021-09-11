import 'package:flutter/material.dart';
import 'package:flutter_bloc_pattern/src/bloc_pattern_simple/bloc/count_bloc.dart';

class CountView extends StatelessWidget {
  CountBloc countBloc;
  CountView({Key? key, required this.countBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("CountView Build!!");
    return Center(
      child: StreamBuilder(
        stream: countBloc.count,
        initialData: 0,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data.toString());
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}