import 'package:block_practice_1/presentation/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/my_app.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider<CounterCubit>(create: (context) => CounterCubit()),
  ], child: const MyApp()));
}
