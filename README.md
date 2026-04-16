# c-buildenv

A minimal C compilation setup using devcontainer and just for task automation. 

## Requirements

* just
* devcontainer compatible runtime (cli, vs code, …)

## Usage

Get recipes with `just --list`
Available recipes:
* all
* build project='dwm'
* default
* setup
* up

### setup

Clone all defined projects if not already present.

### up

Start the devcontainer if not already running.

### build <project>

Build the specified project inside the devcontainer.
Defaults to dwm
Depends on recipe up.

### all

Build all defined projects.

### default

Run the default recipe (currently `build`)

