![](https://img.shields.io/badge/Microverse-blueviolet)

# Tic Tac Toe

> In this project, I created a simple but amazing Tic Tac Toe game. I also worked with Mar to incorporate some testing at the end of the project using Rspec

Tic-tac-toe is a game in which two players seek in alternate turns to complete a row, a column, or a diagonal with either three O's or three X's drawn in the spaces of a grid of nine squares; noughts and crosses.

![screenshot](../readme_game_instructions/screenshot.png) 

## How it works

- The game starts by requiring the two players to enter their names, one after the other
- The game does a bid to randomly select player to start
- The player that wins the bid starts by entering a number between 1 and 9
- Numbers already chosen are taken off the list of available options so players can not choice them again
- Available options are displayed to players as they play
- The first person to put 3 letters next to each other horizontally, vertically or diagonally wins
- If all nine spaces are filled without anyone winning, the game reports a tie

## Getting Started

This game is built with Ruby and played at the terminal so in order to play the game:

- You start by installing ruby on your computer
> [Installing Ruby](https://www.theodinproject.com/courses/ruby-programming/lessons/installing-ruby-ruby-programming)

- Then you clone the game from githup into a local repository
  ```
  git clone git@github.com:abongsjoel/tic-tac-toe.git
  ```
- Navigagte into the tic-tac-toe folder
  ```
  cd tic-tac-toe
  ```
- Run the application using the following command
  ```
  bin/main.rb
  ```
- Voila
- Follow the instructions displayed at the terminal to play the game
- Enjoy

## Testing with Rspec

This game is tested with Rspec which is a computer domain-specific language (DSL) testing tool written in the Ruby programming language.


## How to get Rspec Running

- Run the following command in the terminal
  ```
  gem install rspec
  ```
- This command installs Rspec on your computer. You ensure that Rspec is installed by running the following     command to see the installed version
  ```
  rspec --version
  ```
- You should get output similar to the following:
  ```
  RSpec 3.10
    - rspec-core 3.10.1
    - rspec-expectations 3.10.1
    - rspec-mocks 3.10.2
    - rspec-support 3.10.2
  ```
  The rspec gem comes packed with all we need to get started including the 5 gems listed above.

- Navigagte into the tic-tac-toe folder
  ```
  cd tic-tac-toe
  ```
- Run the following command to initialize Rspec
  ```
  rspec --init
  ```
- This generates a /spec folder and a .rspec file at the root of your project

- Finally, to run the tests, simple run:
  ```
  rspec
  ```

## Rspec output

![screenshot](../readme_game_instructions/testing_output.png) 

## Built With

- Ruby
- OOP

## Authors

👤 **Chi A. Joel**

- GitHub: [@abongsjoel](https://github.com/abongsjoel)
- Twitter: [@thierryjoel10](https://twitter.com/ThierryJoel10)
- LinkedIn: [Chi Abongwa Joel](https://www.linkedin.com/in/chi-abongwa-joel-b4285a97/)

👤 **Mar y Sol Bautista**

- GitHub: [@marilirulita](https://github.com/marilirulita)
- Linkedin: [Mar y Sol Bautista](https://www.linkedin.com/in/mar-y-sol-bautista-alvarez-5a6894151/)
- Twiter: [@marylirulita](https://twitter.com/marylirulita)


## Acknowledgments

- [The Odin Project](https://www.theodinproject.com)
- [Microverse](https://www.microverse.org/)


## Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/abongsjoel/tic-tac-toe/issues).


## Show your support
Give a ⭐️ if you like this project!

## License
  <p>This project is <a href="../main/LICENSE">MIT</a> licensed.</p>
