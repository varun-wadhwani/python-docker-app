# Docker Guessing Game

A simple Python number-guessing game packaged in a Docker container.

## How it works

The app picks a random number between 1 and 20, and the player has to guess it. After each guess, the game tells you whether the number is too high or too low, and it keeps track of the number of attempts.

## Files

- `game.py` — the guessing game logic
- `Dockerfile` — instructions to build the Docker image

## Build the Docker image

From the project directory, run:

```bash
docker build -t terminal-game .
```

## Run the container

To run the game interactively:

```bash
docker run --rm -it terminal-game
```

This starts the app in the terminal so you can enter guesses.

## Notes

- `--rm` removes the container automatically after it exits.
- `-it` enables interactive terminal input, which is required for the `input()` calls in the game.
