import 'dart:math';
import '../models/quote.dart';

class QuoteService {
  static final List<Quote> _quotes = [
    Quote(text: "Be yourself; everyone else is already taken.", author: "Oscar Wilde"),
    Quote(text: "Two things are infinite: the universe and human stupidity.", author: "Albert Einstein"),
    Quote(text: "So many books, so little time.", author: "Frank Zappa"),
    // …you can add more here
  ];

  static Quote getRandom() {
    final idx = Random().nextInt(_quotes.length);
    return _quotes[idx];
  }
}
