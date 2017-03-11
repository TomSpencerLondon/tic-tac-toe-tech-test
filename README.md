# Tic-Tac-Toe Tech Test
#### Technologies: Ruby, Rspec
### [Makers Academy] (http://www.makersacademy.com) - Week 10 Solo Tech Test

## Index
* [Installation] (#Install)
* [Rspec Tests] (#Rspec)
* [Usage] (#Usage)

## Challenege

The rules of tic-tac-toe are as follows:

* There are two players in the game (X and O)
* Players take turns until the game is over
* A player can claim a field if it is not already taken
* A turn ends when a player claims a field
* A player wins if they claim all the fields in a row, column or diagonal
* A game is over if a player wins
* A game is over when all fields are taken

Build the business logic for a game of tic tac toe. It should be easy to implement a working game of tic tac toe by combining your code with any user interface, whether web or command line. 


## <a name="Usage">Usage</a>

### The board
 0 | 1 | 2
---|---|---
 3 | 4 | 5
 6 | 7 | 8
 
irb
```ruby
$ require "./lib/tictactoe"
$ game = TicTacToe.new
$ game.play(n)              # where n is the number of the required slot (0-8)
```
