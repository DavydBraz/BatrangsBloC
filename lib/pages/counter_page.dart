import 'dart:math';

import 'package:counterbatmanbloc/bloc/counter_bloc.dart';
import 'package:counterbatmanbloc/bloc/counter_event.dart';
import 'package:counterbatmanbloc/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc=context.read<CounterBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Batman Counter"),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                for(int index=0; index < state.count; index++)
                Positioned(
                  left: Random().nextInt(250).toDouble(),
                  right: Random().nextInt(400).toDouble(),
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset('images/Batrang.jpeg'),
                  )
                )
              ],
            );
          },),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: (){
                counterBloc.add(CounterIncrementPressed());//incrementar
            }),
            FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: (){
                counterBloc.add(CounterDecrementPressed());//diminuir
            }),
            FloatingActionButton(
              child: const Icon(Icons.exposure_zero),
              onPressed: (){
                counterBloc.add(CounterResetPressed());//zerar
            })
          ],
        ),
      );
    }
}