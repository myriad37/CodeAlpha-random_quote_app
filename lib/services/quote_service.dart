import 'dart:math';
import '../models/quote.dart';

class QuoteService {
  static final List<Quote> _quotes = [
    Quote(text: "Be yourself; everyone else is already taken.", author: "Oscar Wilde"),
    Quote(text: "Two things are infinite: the universe and human stupidity.", author: "Albert Einstein"),
    Quote(text: "So many books, so little time.", author: "Frank Zappa"),
Quote(text: "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.", author: "Albert Einstein"),
Quote(text: "So many books, so little time.", author: "Frank Zappa"),
Quote(text: "A room without books is like a body without a soul.", author: "Marcus Tullius Cicero"),
Quote(text: "You only live once, but if you do it right, once is enough.", author: "Mae West"),
Quote(text: "In three words I can sum up everything I've learned about life: it goes on.", author: "Robert Frost"),
Quote(text: "If you tell the truth, you don't have to remember anything.", author: "Mark Twain"),
Quote(text: "A friend is someone who knows all about you and still loves you.", author: "Elbert Hubbard"),
Quote(text: "To live is the rarest thing in the world. Most people exist, that is all.", author: "Oscar Wilde"),
Quote(text: "Without music, life would be a mistake.", author: "Friedrich Nietzsche"),
Quote(text: "Always forgive your enemies; nothing annoys them so much.", author: "Oscar Wilde"),
Quote(text: "We accept the love we think we deserve.", author: "Stephen Chbosky"),
Quote(text: "Imperfection is beauty, madness is genius and it's better to be absolutely ridiculous than absolutely boring.", author: "Marilyn Monroe"),
Quote(text: "Life is what happens to us while we are making other plans.", author: "Allen Saunders"),
Quote(text: "I have not failed. I've just found 10,000 ways that won't work.", author: "Thomas A. Edison"),
Quote(text: "It is never too late to be what you might have been.", author: "George Eliot"),
Quote(text: "Everything you can imagine is real.", author: "Pablo Picasso"),
Quote(text: "Do what you can, with what you have, where you are.", author: "Theodore Roosevelt"),
Quote(text: "Success is not how high you have climbed, but how you make a positive difference to the world.", author: "Roy T. Bennett"),
Quote(text: "Turn your wounds into wisdom.", author: "Oprah Winfrey"),
Quote(text: "Happiness is not something ready made. It comes from your own actions.", author: "Dalai Lama"),
Quote(text: "The only impossible journey is the one you never begin.", author: "Tony Robbins"),
Quote(text: "Don't be pushed around by the fears in your mind. Be led by the dreams in your heart.", author: "Roy T. Bennett"),
Quote(text: "What you get by achieving your goals is not as important as what you become by achieving your goals.", author: "Zig Ziglar"),
Quote(text: "It does not matter how slowly you go as long as you do not stop.", author: "Confucius"),
Quote(text: "The best way to predict the future is to invent it.", author: "Alan Kay"),
Quote(text: "Life is 10% what happens to us and 90% how we react to it.", author: "Charles R. Swindoll"),
Quote(text: "Stay hungry, stay foolish.", author: "Steve Jobs"),
Quote(text: "Doubt kills more dreams than failure ever will.", author: "Suzy Kassem"),
Quote(text: "Act as if what you do makes a difference. It does.", author: "William James"),
Quote(text: "Believe you can and you're halfway there.", author: "Theodore Roosevelt"),
Quote(text: "The only limit to our realization of tomorrow will be our doubts of today.", author: "Franklin D. Roosevelt"),
Quote(text: "Do not go where the path may lead, go instead where there is no path and leave a trail.", author: "Ralph Waldo Emerson"),
Quote(text: "Don’t watch the clock; do what it does. Keep going.", author: "Sam Levenson"),
Quote(text: "Everything has beauty, but not everyone sees it.", author: "Confucius"),
Quote(text: "It always seems impossible until it’s done.", author: "Nelson Mandela"),
Quote(text: "Start where you are. Use what you have. Do what you can.", author: "Arthur Ashe"),
Quote(text: "You miss 100% of the shots you don’t take.", author: "Wayne Gretzky"),
Quote(text: "Whether you think you can or you think you can’t, you’re right.", author: "Henry Ford"),
Quote(text: "The journey of a thousand miles begins with one step.", author: "Lao Tzu"),

 
// …you can add more here
  ];

  static Quote getRandom() {
    final idx = Random().nextInt(_quotes.length);
    return _quotes[idx];
  }
}
