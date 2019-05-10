class State {
  String title;
  List<Track> tracks;

  State({this.title, this.tracks});
}

class Track {
  String title;
  List<Card> cards;

  Track({this.title, this.cards});

  void addCard(Card card) {
    this.cards.add(card);
  }
}

class Card {
  String title;
  String description;

  Card({this.title, this.description});
}
