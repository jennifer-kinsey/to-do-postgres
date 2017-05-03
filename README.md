# TO DO Lists

Make to do lists with tasks

### Prerequisites

Web browser with ES6 compatibility
Examples: Chrome, Safari
Requires making a postgres database:

kinsey=# CREATE DATABASE to_do;

kinsey=# \c to_do

to_do=# CREATE TABLE tasks (id serial PRIMARY KEY, description varchar);

to_do=# CREATE DATABASE to_do_test WITH TEMPLATE to_do;

to_do=# CREATE TABLE lists (id serial PRIMARY KEY, name varchar);

to_do=# DROP DATABASE to_do_test;

to_do=# CREATE DATABASE to_do_test WITH TEMPLATE to_do;

to_do=# ALTER TABLE tasks ADD list_id int;

to_do=# DROP DATABASE to_do_test;

to_do=# CREATE DATABASE to_do_test WITH TEMPLATE to_do;



Ruby 2.4.1
Bundler

### Installing

Installation is quick and easy! First you can open this link <!--HEROKU LINK HERE--> to see the webpage in action live online. Or you can clone this repository to your machine, navigate to the file path in your terminal, and run 'app.rb' by typing '$ruby app.rb'. If you chose to clone the repository, after you run 'app.rb' you will need to copy the localhost path into your web browswer. The standard localhost for Sinatra is port 4567

## Built With

* Ruby
* Sinatra
* HTML
* CSS
* Bootstrap https://getbootstrap.com/
* ES6
* Jquery https://jquery.com/

## Specifications

| behavior |  input   |  output  |
|----------|:--------:|:--------:|
<!--SPECS GO HERE-->
 
## Authors

* <!--YOUR NAME HERE-->

## License

Copyright © 2017 <!--YOUR NAME HERE-->
