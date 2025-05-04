import 'package:block_practice_1/presentation/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_events.dart';
import '../bloc/counter_state.dart';

class BlocCounter extends StatefulWidget {
  final String title;

  const BlocCounter({super.key, required this.title});

  @override
  State<BlocCounter> createState() => _BlocCounterState();
}

class _BlocCounterState extends State<BlocCounter> {
  late final CounterBloc _counterBloc;

  @override
  void initState() {
    _counterBloc = context.read<CounterBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Bloc counter'),
            const Text('You have pushed the button this many times:'),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, counterState) {
                return Text('${counterState.counterValue ?? '0'}', style: Theme.of(context).textTheme.headlineMedium);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "-111",
            onPressed: () {
              _counterBloc.add(CounterIncrement());
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 8),
          FloatingActionButton(
            heroTag: "-222",
            child: Icon(Icons.remove),
            onPressed: () {
              _counterBloc.add(CounterDecrement());
            },
          ),
        ],
      ),
    );
  }
}
