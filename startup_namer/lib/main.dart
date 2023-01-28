import "package:flutter/material.dart";
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final startUpName = WordPair.random();
    return const MaterialApp(
      title: "welcome to flutter",
      home: RandNames(),
    );
  }
}
class RandNames extends StatefulWidget {
  const RandNames({super.key});

  @override
  State<RandNames> createState() => _RandNamesState();
}

class _RandNamesState extends State<RandNames> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    // final startUpName = WordPair.random();
    // return Text(startUpName.asPascalCase);
    return Scaffold(
      appBar: AppBar(
        title:const Text('startup name generator'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (BuildContext context, int i) {
        if (i.isOdd) {
          return const Divider();
        }
        final int index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}
