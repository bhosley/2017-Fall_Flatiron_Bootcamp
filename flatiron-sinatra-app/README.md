## Sinatra Portfolio Project

# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database
- [X] Include more than one model class (list of model class names e.g. User, Post, Category)
- [X] Include at least one has_many relationship (x has_many y e.g. User has_many Posts)
- [X] Include user accounts
- [X] Ensure that users can't modify content created by other users
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
- [x] Include user input validations
- [x] Display validation failures to user with error message (example form URL e.g. /posts/new)
- [X] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [X] You have a large number of small Git commits
- [X] Your commit messages are meaningful
- [X] You made the changes in a commit that relate to the commit message
- [X] You don't include changes in a commit that aren't related to the commit message

## Overview

This project is intended to demonstrate competency with several of the Sinatra and associated gems use in developing web based applications. 

In this exercise the project is meant to represent a module that would be used to collect and display items (badges) for a user within the greater context of the website as a whole.

As an addict of certifications I have decided to implement this project in a way that would be usable as a module to collect and display objects in a similar manner/style.

## Notes

-Badges, as used here, may be used to represent any variety of things,  certifications, achievements, prizes for besting a gym leader, etc.

-Authority, as used here, is meant to represent the entity that gives meaning to the awarded object, a certifying body, the publisher of a game, or even the regional League.

-User is the possessor of the awarded object, be they student, player, or trainer.

    -Users may have many badges.
    -Authorities may issue different badges.
    -Therefore Users may be associated with many authorities through their badges, and vice versa.

## Development

Features not implemented:

-Multiple awards of the same badge to the same user.

-While the ideal real world situation would not allow the user to issue badges to themselves, that functionality is used here. This is because I feel it meets the requirements of the project better, and because I think that it would be simple enough to transfer that authority at a later time.

## TODO

build layout
build index view
build views
