P1SCORECARD = {
    ones: nil,
    twos: nil,
    threes: nil,
    fours: nil,
    fives: nil,
    sixes: nil,
    three_of_a_kind: nil,
    four_of_a_kind: nil,
    full_house: nil,
    small_straight: nil,
    large_straight: nil,
    yahtzee: nil,
    chance: nil
}

arr = [1, 2, 3, 4, 5, 6]
a = arr.keep_if{|a| a > 3}.sum
p a
p P1SCORECARD
P1SCORECARD[:ones] = a
p P1SCORECARD