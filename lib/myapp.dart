import 'package:counterbatmanbloc/bloc/counter_bloc.dart';
import 'package:counterbatmanbloc/pages/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Mapp',
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=>CounterBloc()),
        ], 
        child: const CounterPage()),
    );
  }
}