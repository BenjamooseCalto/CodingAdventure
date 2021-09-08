import random


class Card:
    def __init__(self, suit, value):
        self.suit = suit
        self.value = value

    def __str__(self):
        return f"{self.value} of {self.suit}"

    def show(self):
        print(f"{self.value} of {self.suit}")

    def trash(self):
        del self


class Deck:
    SUITS = ["diamonds", "spades", "hearts", "clubs"]

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

    def draw(self, number=1):
        drawn = []
        for _ in range(number):
            drawn.append(self.cards.pop())
        return drawn


class Discard:
    def __init__(self):
        self.cards = []

    def trash(self, card):
        self.cards.append(card)

    def show(self):
        print(f"{(len(self.cards))} card have been discarded.")


class Die:  # dice for rolling
    def __init__(self):
        self.size = 6

    def __str__(self):
        return f"Die with size {self.size}"

    def roll(self, number):
        rolls = []
        i = 0
        while True:
            i += 1
            rolls.append(random.randint(1, self.size))
            if i >= number:
                break
        return rolls


class Hand:
    def __init__(self):
        self.items = []

    def show(self):
        hand = []
        for item in self.items:
            hand.append(str(item))
        return hand

    def add(self, item):
        self.items.append(item)


deck = Deck()
deck.build()
hand = Hand()
hand.add(Die())
print(hand.show())
