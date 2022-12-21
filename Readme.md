# MDesign - REST API

REST API backend built with Java Spring for the MDesign React Frontend 
(see [Frontend](https://github.com/AmbryN/mdesign-react)).

## Use case

MDesign is a Fablab based in Metz (France) which organizes events for makers, schools and public institutions.

Every month, a report containing information about all these events (number of attendees, mean age,
gender repartition, targeted neighborhoods etc.) has to be provided to official institution (e.g. state, region).
To speed up the storage, retrieval and analysis of this data, I was tasked to develop a web application,
which will help Fablab employees with these tasks.

## Features

### Working features
* Fetching, Creating, Updating and Deleting (CRUD) data using:
    * Models
    * Controllers and REST Routes,
    * Repositories
* Handling frontend Requests and generating JSON Responses with Spring Web
* MDesign Domain specific queries using prepared statement with Spring Data
* Authentication using JWT : token generation and control using Spring Security
* Authorization of routes depending on user roles : ADMIN or USER

## Built With

* [Spring Boot](https://spring.io/projects/spring-boot)
* [Spring Data](https://spring.io/projects/spring-data)
* [Spring Security](https://spring.io/projects/spring-security)
* [MariaDB](https://mariadb.org/)

## Authors

* **AmbryN** - *Initial work* - [AmbryN](https://github.com/AmbryN)
