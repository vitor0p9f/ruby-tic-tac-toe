FROM ruby:latest

WORKDIR /usr/app

COPY . /usr/app

ENTRYPOINT ["ruby", "tic_tac_toe.rb"] 
