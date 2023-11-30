import 'package:bloc_widgets/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home View'),
      ),
      // `BlocListener` - <> berilgen cubit je bloctu ugup turat jana
      // state ke jarasha berilgen function dy atkarat
      body: Center(
        child: Column(
          children: [
            // BlocBuilder -  <> berilgen cubit je bloc menen state ugup turat
            // state ke jarasha ozun kurat
            BlocConsumer<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is HomeInitialState) {
                  return const Text('Initial');
                } else if (state is HomeLoadingState) {
                  return const CircularProgressIndicator();
                } else if (state is HomeSuccessState) {
                  return Text('Success: ${state.data}');
                } else if (state is HomeErrorState) {
                  return Text('Error: ${state.message}');
                } else {
                  return const Text('Unknown');
                }
              },
              listener: (BuildContext context, HomeState state) {
                if (state is HomeErrorState) {
                  showAdaptiveDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Oop! Error value'),
                      content: Text('Value is ${state.message}'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Ok'),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
            ElevatedButton(
              onPressed: () {
                // context.read<HomeCubit>(); - <> berilgen objecti
                // beret eger BlocProvider menen berilgen bolso
                final homeCubit = context.read<HomeCubit>();
                homeCubit.parseNumber('234wed');
              },
              child: const Text('parse'),
            ),
          ],
        ),
      ),
    );
  }
}
