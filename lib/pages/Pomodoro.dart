import 'package:flutter/material.dart';
import 'package:pomodoro/components/TimeEntry.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Pomodoro'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              TimeEntry(
                titulo: 'Trabalho',
                valor: 25,
              ),
              TimeEntry(
                titulo: 'Descanso',
                valor: 5,
              ),
            ],
          )
        ],
      ),
    );
  }
}
