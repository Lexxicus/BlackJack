class CardDeck
  attr_accessor :bj_deck
  def initialize
    @bj_deck = [
      { suit: "A\u2666", points: 10 }, { suit: "K\u2666", points: 10 },
      { suit: "Q\u2666", points: 10 }, { suit: "J\u2666", points: 10 },
      { suit: "10\u2666", points: 10 }, { suit: "9\u2666", points: 9 },
      { suit: "8\u2666", points: 8 }, { suit: "7\u2666", points: 7 },
      { suit: "6\u2666", points: 6 }, { suit: "5\u2666", points: 5 },
      { suit: "4\u2666", points: 4 }, { suit: "3\u2666", points: 3 },
      { suit: "2\u2666", points: 2 }, { suit: "A\u2663", points: 10 },
      { suit: "K\u2663", points: 10 }, { suit: "Q\u2663", points: 10 },
      { suit: "J\u2663", points: 10 }, { suit: "10\u2663", points: 10 },
      { suit: "9\u2663", points: 9 }, { suit: "8\u2663", points: 8 },
      { suit: "7\u2663", points: 7 }, { suit: "6\u2663", points: 6 },
      { suit: "5\u2663", points: 5 }, { suit: "4\u2663", points: 4 },
      { suit: "3\u2663", points: 3 }, { suit: "2\u2663", points: 2 },
      { suit: "A\u2665", points: 10 }, { suit: "K\u2665", points: 10 },
      { suit: "Q\u2665", points: 10 }, { suit: "J\u2665", points: 10 },
      { suit: "10\u2665", points: 10 }, { suit: "9\u2665", points: 9 },
      { suit: "8\u2665", points: 8 }, { suit: "7\u2665", points: 7 },
      { suit: "6\u2665", points: 6 }, { suit: "5\u2665", points: 5 },
      { suit: "4\u2665", points: 4 }, { suit: "3\u2665", points: 3 },
      { suit: "2\u2665", points: 10 }, { suit: "A\u2665", points: 10 },
      { suit: "K\u2665", points: 10 }, { suit: "Q\u2665", points: 10 },
      { suit: "J\u2665", points: 10 }, { suit: "10\u2665", points: 10 },
      { suit: "9\u2665", points: 9 }, { suit: "8\u2665", points: 8 },
      { suit: "7\u2665", points: 7 }, { suit: "6\u2665", points: 6 },
      { suit: "5\u2665", points: 5 }, { suit: "4\u2665", points: 4 },
      { suit: "3\u2665", points: 3 }, { suit: "2\u2665", points: 10 }
    ]
  end
end
