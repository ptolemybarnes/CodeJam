## Round 2: Lazer Kata!

Write a method #lazer that can blast a hole in the *middle* a string.

E.g.,

"codejam".lazer(3) #=> "co___am"

As you can see, #lazer takes a number which tells it how big to make the hole.

"makers academy".lazer(5) #=> "make_____ademy"

### BONUS!

Add a "stun mode" to the lazer. Stun mode should scramble a range of letters in the middle of the word.

For example:

"codejam".lazer(3, :stun) #=> "cojdeam"

"makers academy".lazer(5, :stun) #=> "makes acrademy"



Go forth and arm the lazer!!!


