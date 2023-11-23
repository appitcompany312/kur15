import 'package:counter_bloc_3/bloc/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/*
context.read<CounterCubit>().increment()
context.watch<CounterCubit>().state
context.select((CounterCubit cubit) => cubit.state)
*/

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${context.watch<CounterCubit>().state}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<CounterCubit>().decrement,
        child: const Icon(Icons.remove),
      ),
    );
  }
}
