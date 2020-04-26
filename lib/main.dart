import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Thomas', text: 'Ich bin der König der Welt'),
    Quote(author: 'Jule', text: 'Die Schönheit des Seins'),
    Quote(author: 'Hannes', text: 'Das mir alles sowas von egal')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Wahlliste'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        
      ),
      body: Column(
        children: quotes.map((quote)=> QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}

