import 'package:flutter/material.dart';
import '../models/quote.dart';
import '../services/quote_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      appBar: AppBar(title: Text('Random Quote')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '"${_currentQuote.text}"',
              style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              '- ${_currentQuote.author}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 48),
            ElevatedButton(
              onPressed: _showNewQuote,
              child: Text('New Quote'),
            ),
          ],
        ),
      ),
    );
  }
}
