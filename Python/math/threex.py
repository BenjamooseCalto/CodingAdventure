#no matter what number you enter here, it will always converge to a loop of 4 > 2 > 1. This script stops at 1.
import random
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt

def main(userN):
    if userN:
        n = int(input('Enter a number: '))
    else:
        n = random.randrange(0, 999999999999)
    start = n
    list = []
    steps = []

    def threex(n=int):
        step = 0
        while True:
            step += 1
            if n == 1:
                return False
            if n % 2 == 0:
                if userN: print(n, ' - EVEN')
                n = n / 2
            else:
                if userN: print(n, ' - ODD')
                n = n * 3 + 1
            n = int(n)
            steps.append(step)
            list.append(n)

    threex(n)

    maximum = max(list) if start < max(list) else start
    diff = maximum / n

    if start == maximum:
        print(f'{n:,} converged to 1 in {len(steps):,} steps, with the starting value being the maximum value.')
    else:
        print(f'{n:,} converged to 1 in {len(steps):,} steps with {maximum:,} being the highest value. This is {int(diff)}x bigger than the starting value.')

userN = False # change this if you want to put in your own numbers
limit = 1 if userN else 100

for _ in range(limit):
    main(userN)



