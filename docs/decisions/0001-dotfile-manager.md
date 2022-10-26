# Dotfile Manager

* Status: accepted
* Date: 2022-07-08

## Considered Options

* rsync
* dotbot
* chezmoi

## Decision Outcome

Chosen option: "dotbot", because comes out best.

## Pros and Cons of the Options

### rsync

initial version used this

* Good, because simple solution
* Bad, because requires directly editing commands instead of having a config file

### dotbot

* Good, because worked for me
* Good, because easy to configure
* Bad, because uses git submodules

### chezmoi

* Good, because new
* Bad, because requires update to setup
