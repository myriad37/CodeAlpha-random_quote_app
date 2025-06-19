import 'package:flutter/material.dart';
import 'models/quote.dart';
import 'services/quote_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Quote',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Quote of the Day'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Quote _currentQuote;

  @override
  void initState() {
    super.initState();
    _currentQuote = QuoteService.getRandom();
  }

  void _showNewQuote() {
    setState(() {
      _currentQuote = QuoteService.getRandom();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // clean white background
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                '"${_currentQuote.text}"',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                '- ${_currentQuote.author}',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.teal,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 36),
              ElevatedButton(
                onPressed: _showNewQuote,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: const Text(
                  'New Quote',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
