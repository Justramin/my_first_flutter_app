import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final String name = 'Justin Ram M';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 21, 176, 42),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    print('Button clicked');
                  },
                  child: Text('Click Me'),
                ),
                IconButton(
                  onPressed: () {
                    print('Clike the icon button');
                  },
                  icon: const Icon(Icons.mic),
                  color: Colors.white,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                print('Click Eleveted Buttun');
              },
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}

//(base) justin@Justins-MacBook-Air sample_project % => open -a Simulator => flutter run
