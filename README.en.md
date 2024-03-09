<div align = "center">
  <p>This README is available in the following languages:</p>
  <br/>
  
  <a href = "https://github.com/vitor0p9f/ruby-tic-tac-toe/blob/main/README.md" target="_blank">
    <img src="https://img.shields.io/badge/Language-Portuguese-green"/>
  </a>
</div>

<div align="center">
  
  # Study Repository - Ruby tic-tac-toe
</div>

<p align="justify">
This project was developed with the aim of learning more about the Ruby programming language and its concepts, through their application in the construction of the famous tic-tac-toe game. The program prints a board on the screen and asks for user input. With each input, the board is updated with the player's respective shape. As soon as one of the victory conditions is reached, the program prints out who was the winner, or if it was a draw, and offers the user the possibility of restarting the game or exiting the program.
</p>

## :movie_camera: Project demonstration

https://github.com/vitor0p9f/ruby-tic-tac-toe/assets/153991573/6e351bc9-9634-4f77-9ea7-f7fe32e3d101


## :page_facing_up: Design Patterns / Paradigms used

* OOP(_Object Oriented Programming_)
* Conventional commits

## :pushpin: Acquired Knowledge

* Encapsulation
* Writing better commit messages with conventional commits patterns.
* Loops in Ruby.
* String manipulation with _regex_.
* Heredoc
* Array manipulation.

## :triangular_flag_on_post: Challenges Encountered

* At the beginning of the project, update the state of the board before displaying it in the terminal. This occurred due to poor planning of how the characters that made up the board would be stored and the numbers that would define the positions where the players' shapes would be placed when a move was made.

## :rocket: Running the Project 

### 1. Clone the repository to your machine

After the repository is on your machine, navigate to the newly cloned directory.

To run this project on your own machine, you can choose between the following options:

* Run the project using Docker.
* Run the project by installing the dependencies.

### :whale2: Using Docker

#### :construction: Requirements

* Have Docker installed and configured on your machine.

#### 2. Build an image of the project using the following command:

```bash
docker build -t ruby-tic-tac-toe .
```

The created image will have the same name as the project.

#### 3. Create a container based on the newly created image using the command:

```bash
docker run -it --name ruby-tic-tac-toe ruby-tic-tac-toe
```

The above command will use the previously created image to create a container with the project name.

After running the above command, the container's terminal should automatically open, already executing the project code.

To run the project again without creating a new container, simply run the following command:

```bash
docker start -i ruby-tic-tac-toe
```

### :link: Installing Dependencies

#### :construction: Requirements

* Have Ruby installed on your machine.
* I recommend using tools like RVM or rbenv to allow the installation of Gems without administrator permission.

#### 2. Run the project by executing the command:

```bash
ruby tic_tac_toe.rb
```
