# Battleships Tech Test

This is a tech test challenge, during my 10th week at Makers Academy, a 12-week software developer bootcamp.

### Requirements

The challenge requirements are described by the following user stories.
                  
### User Stories

```
As a player
So that I can prepare for the game
I would like to place a ship in a board location

As a player
So that I can play a more interesting game
I would like to have a range of ship sizes to choose from

As a player
So the game is more fun to play
I would like a nice command line interface that lets me enter ship positions and shots using commands (rather than using IRB to interact with objects)

As a player
So that I can create a layout of ships to outwit my opponent
I would like to be able to choose the directions my ships face in

As a player
So that I can have a coherent game
I would like ships to be constrained to be on the board

As a player
So that I can have a coherent game
I would like ships to be constrained not to overlap

As a player
So that I can win the game
I would like to be able to fire at my opponent's board

As a player
So that I can refine my strategy
I would like to know when I have sunk an opponent's ship

As a player
So that I know when to finish playing
I would like to know when I have won or lost

As a player
So that I can consider my next shot
I would like to be able to see my hits and misses so far

As a player
So that I can play against a human opponent
I would like to play a two-player game
```

### Domain Models

### Design Approach

### Code Structure

The code is structured into two main folders:
- The ```lib``` folder, which includes the code
- The ```spec``` folder, which includes the tests. This folder is also divided into two folders:
  - The ```features``` folder, which includes the feature tests
  - The ```units``` folder, which includes the unit tests

The code is structured this way to separate the model files from the tests files. In addition, this is the conventional way to structure Ruby code tested with RSpec.

### Technologies Used

* ```ruby``` for the code
* ```rspec``` for testing
* ```rubocop``` for linting
* ```simplecov``` for test coverage

### Prerequisites

* Clone this repository with ```git clone```
* Change into the folder with ```cd battleships_tech_test```
* Run ```bundle``` to install all the dependencies
  
### How to Run the Tests

To run all the tests type ```rspec```

### How to run the Linter

To run the linter type ```rubocop```

### How to Use the Program - Feature Test
