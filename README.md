**OneBitNewExchange**
===================

![ruby](https://img.shields.io/badge/Ruby-2.5.1-red.svg)
![rails](https://img.shields.io/badge/Rails-5.2.3-red.svg)
![rails](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)
![postgres](https://img.shields.io/badge/postgres-9.5-blue)

## About

Sistema para conversão de moedas e criptomoedas.

## [Acesse](https://onebitnewexchange.herokuapp.com/) - https://onebitnewexchange.herokuapp.com/

![OneBitNewExchange](https://raw.githubusercontent.com/James-Dias/onebitnewexchange/master/public/screenshot.png)

## Usage

Clone the repository with ```git clone https://github.com/James-Dias/onebitnewexchange.git```. In the repository folder:
  * Run ```cd onebitnewexchange```
  * Run ```docker-compose build```
  * Run ```docker-compose rm --rm app rake db:create```
  * Run ```docker-compose rm --rm app rake db:migrate```
  * Run ```docker-compose up```
It's done! Just access your http://localhost:3000.


## Test

  * ```docker-compose run --rm app bundle exec rspec```


## Built With and Support tools

  * Ruby 2.5.1
  * Rails 5.2.3
  * PostgreSQL 9.5
  * Docker 19.03.4
  * The Free Currency Converter API (https://free.currencyconverterapi.com/)
  * Gem rspec-rails
  * Gem rest-client

## Contact

E-mail: jamesdias0@gmail.com | LinkedIn: www.linkedin.com/in/james-dias0
