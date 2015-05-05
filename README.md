#Sinatra App

This is my attempt at doing some TDD/BDD with Ruby again. Just a few examples here and there about doing server-side Ruby. Using branches for the different experiments.

To run the app:

    $ bundle install
    $ bundle exec thin -R config.ru start

To run the tests:

    $ bundle exec rspec
    $ bundle exec cucumber

Build the REACT stuffs:

    $ ./node_modules/.bin/jsx js/src/ public/js/

