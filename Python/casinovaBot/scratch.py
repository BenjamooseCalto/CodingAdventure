import random

# TO DO: make hand, prevent overdrawing

class Card:
    def __init__(self, suit, value):
        self.suit = suit
        self.value = value
    
    def __str__(self):
        return f'{self.value} of {self.suit}'

    def show(self):
        print(f'{self.value} of {self.suit}')

    def trash(self):
        del self

class Deck:
    SUITS = ['diamonds', 'spades', 'hearts', 'clubs']

    def __init__(self):
        self.cards = []
        self.build()

    def build(self):
        for suit in self.SUITS:
            for v in range(2, 15):
                self.cards.append(Card(suit, v))
    
    def show(self):
        for c in self.cards:
            c.show()
    
    def shuffle(self):
        for i in range(len(self.cards) - 1, 0, -1):
            r = random.randint(0, i)
            self.cards[i], self.cards[r] = self.cards[r], self.cards[i]
    
    def draw(self):
        return self.cards.pop()

class Discard:
    def __init__(self):
        self.cards = []
    
    def trash(self, card):
        self.cards.append(card)

    def show(self):
        print(f'{(len(self.cards))} card have been discarded.')
