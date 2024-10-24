import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'provider.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(providerCounter).counter;
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    ref.read(providerCounter.notifier).increment();
                  },
                  child: const Text('Increment')),
              Text(count.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
