import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Quote {
  final String text;
  final String author;

  Quote({required this.text, required this.author});
}

class DemoTask1 extends StatefulWidget {
  const DemoTask1({Key? key}) : super(key: key);

  @override
  State<DemoTask1> createState() => _DemoTask1State();
}

class _DemoTask1State extends State<DemoTask1> {
  final TextEditingController _number1Controller = TextEditingController();
  final TextEditingController _number2Controller = TextEditingController();
  final FocusNode _number2FocusNode = FocusNode();

  int _answer = 0;
  List<int> _history = [];

  @override
  void dispose() {
    _number1Controller.dispose();
    _number2Controller.dispose();
    _number2FocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Center(child: Text("Quotes of the Day.")),
          const SizedBox(height: 20),
          const QuoteWidget(),
          const SizedBox(height: 20),
          const Center(child: Text("Adder")),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: TextFormField(
                    controller: _number1Controller,
                    keyboardType: TextInputType.number,
                    onChanged: (_) => _calculateAnswer(),
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) {
                      FocusScope.of(context).requestFocus(_number2FocusNode);
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Number 1',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a number';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(width: 20),
                Text("+"),
                const SizedBox(width: 20),
                Flexible(
                  child: TextFormField(
                    controller: _number2Controller,
                    keyboardType: TextInputType.number,
                    focusNode: _number2FocusNode,
                    onChanged: (_) => _calculateAnswer(),
                    textInputAction: TextInputAction.done,
                    onFieldSubmitted: (_) {
                      _number2FocusNode.unfocus();
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Number 2',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a number';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Answer: $_answer',
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _history.add(_answer);
              });
            },
            child: const Text('Add to History'),
          ),
          const SizedBox(height: 20),
          Text(
            'History:',
            style: const TextStyle(fontSize: 20),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _history.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_history[index].toString()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _calculateAnswer() {
    final number1 = int.tryParse(_number1Controller.text) ?? 0;
    final number2 = int.tryParse(_number2Controller.text) ?? 0;
    final sum = number1 + number2;
    setState(() {
      _answer = sum;
    });
  }
}

class QuoteWidget extends StatefulWidget {
  const QuoteWidget({Key? key}) : super(key: key);

  @override
  _QuoteWidgetState createState() => _QuoteWidgetState();
}

class _QuoteWidgetState extends State<QuoteWidget> {
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
    return Column(
      children: [
        const SizedBox(height: 20),
        FutureBuilder<Quote>(
          future: _quoteFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasData) {
              final quote = snapshot.data!;
              return Column(
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
                ],
              );
            } else if (snapshot.hasError) {
              _errorMessage = 'Error: Failed to load quote';
              return Column(
                children: [
                  Text(
                    _errorMessage,
                    style: TextStyle(fontSize: 18, color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            } else {
              return Text('No data');
            }
          },
        ),
      ],
    );
  }
}
