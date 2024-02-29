import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi contador TecNM"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              icon: const Icon(Icons.refresh_rounded))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$clickCounter",
              style:
                  const TextStyle(fontSize: 150, fontWeight: FontWeight.w200),
            ),
            Text(
              (clickCounter == 1 || clickCounter == -1) ? 'Click' : 'Clicks',
              style: const TextStyle(fontSize: 50),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          btnPlusOne(
              onPress: clickRefresh, icono: const Icon(Icons.refresh_rounded)),
          const SizedBox(
            height: 18,
          ),
          btnPlusOne(onPress: clickPlusOne, icono: const Icon(Icons.plus_one)),
          const SizedBox(
            height: 18,
          ),
          btnPlusOne(
              onPress: clickMinusOne, icono: const Icon(Icons.exposure_minus_1))
        ],
      ),
    );
  }

  Widget btnPlusOne({required void Function() onPress, required Icon icono}) =>
      FloatingActionButton(
        onPressed: onPress,
        child: icono,
      );
  clickPlusOne() {
    setState(() {
      clickCounter++;
    });
  }

  clickMinusOne() {
    setState(() {
      if (clickCounter == 0) {
        print('Solo llega a 0');
      }

      clickCounter--;
    });
  }

  clickRefresh() {
    setState(() {
      clickCounter = 0;
    });
  }
}
