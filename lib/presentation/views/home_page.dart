import 'package:block_practice_1/presentation/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_counter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final CounterCubit _counterCubit;

  @override
  void initState() {
    _counterCubit = context.read<CounterCubit>();
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
            const Text('Cubit counter'),
            const Text('You have pushed the button this many times:'),
            BlocBuilder<CounterCubit, int>(
              builder: (context, counter) {
                return Text('$counter', style: Theme.of(context).textTheme.headlineMedium);
              },
            ),
            SizedBox(height: 200),
            const Text("Test bloc use case: "),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BlocCounter(title: "Bloc counter")));
              },
              child: Text("Go to bloc counter"),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(heroTag: "-1", onPressed: () => _counterCubit.incrementCounter(), tooltip: 'Increment', child: const Icon(Icons.add)),
          SizedBox(height: 8),
          FloatingActionButton(heroTag: "-2", onPressed: () => _counterCubit.decrementCounter(), tooltip: 'decrement', child: const Icon(Icons.remove)),
        ],
      ),
    );
  }
}
