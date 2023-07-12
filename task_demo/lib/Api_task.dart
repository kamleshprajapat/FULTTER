import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Quote {
  final String text;
  final String author;

  Quote({required this.text, required this.author});
}

class QuoteScreen extends StatefulWidget {
  @override
  _QuoteScreenState createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  late Future<Quote> _quoteFuture;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _quoteFuture = fetchQuote();
  }

  Future<Quote> fetchQuote() async {
    try {
      final response = await http.get(Uri.parse('https://type.fit/api/quotes'));

      if (response.statusCode == 200) {
        final List<dynamic> quoteData = json.decode(response.body);
        final randomIndex = DateTime.now().microsecond % quoteData.length;
        final quote = quoteData[randomIndex];
        return Quote(
          text: quote['text'],
          author: quote['author'] ?? 'Unknown',
        );
      } else {
        throw Exception('Failed to load quote (${response.statusCode})');
      }
    } catch (error) {
      throw Exception('Failed to load quote: $error');
    }
  }

  void _refreshQuote() {
    setState(() {
      _quoteFuture = fetchQuote();
      _errorMessage = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Quote'),
      ),
      body: Center(
        child: FutureBuilder<Quote>(
          future: _quoteFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasData) {
              final quote = snapshot.data!;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    quote.text,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- ${quote.author}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _refreshQuote,
                    child: Text('Refresh'),
                  ),
                ],
              );
            } else if (snapshot.hasError) {
              _errorMessage = 'Error: Failed to load quote';
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _errorMessage,
                    style: TextStyle(fontSize: 18, color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _refreshQuote,
                    child: Text('Retry'),
                  ),
                ],
              );
            } else {
              return Text('No data');
            }
          },
        ),
      ),
    );
  }
}
