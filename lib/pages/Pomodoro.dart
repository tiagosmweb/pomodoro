import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/Cronometro.dart';
import 'package:pomodoro/components/TimeEntry.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: Cronometro()),
          Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 40,
              ),
              child: Observer(
                builder: (_) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TimeEntry(
                      titulo: 'Trabalho',
                      valor: store.tempoTrabalho,
                      inc: store.incrementarTempoTrabalho,
                      dec: store.decrementarTempoTrabalho,
                    ),
                    TimeEntry(
                      titulo: 'Descanso',
                      valor: store.tempoDescanso,
                      inc: store.incrementarTempoDescanco,
                      dec: store.decrementarTempoDescanso,
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
