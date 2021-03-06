import 'package:flutter/material.dart';
import 'package:flutter_bloc_pattern/src/bloc_pattern/bloc/count_bloc.dart';
import 'package:flutter_bloc_pattern/src/bloc_pattern/components/clone_count_view.dart';
import 'package:flutter_bloc_pattern/src/bloc_pattern/components/count_view.dart';

CountBloc? countBloc;

class BlocDisplayWidget extends StatefulWidget {
  const BlocDisplayWidget({Key? key}) : super(key: key);

  @override
  _BlocDisplayWidgetState createState() => _BlocDisplayWidgetState();
}

class _BlocDisplayWidgetState extends State<BlocDisplayWidget> {
  @override
  void initState() {
    super.initState();
    countBloc = CountBloc();
  }

  @override
  void dispose() {
    super.dispose();
    countBloc!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bloc 패턴"),
      ),
      body: Column(
        children: [
          Expanded(
            child: CountView(),
          ),
          Expanded(
            child: CloneCountView(),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              countBloc!.countEventBloc.countEventSink.add(CountEvent.ADD_EVENT);
            },
          ),
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              countBloc!.countEventBloc.countEventSink.add(CountEvent.SUBTRACT_EVENT);
            },
          ),
        ],
      ),
    );
  }
}
