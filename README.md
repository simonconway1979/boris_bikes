#Boris Bikes

We are going to create a new Boris bike program which will be a network of docking stations and bikes that anyone can use.

The program will emulate docking stations, bikes and infrastructure.
## Exercise 1

Set up git/github and README

## Exercise 2

### User Story

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

####Nouns
- Person
- Bike
- Docking Station

###Verbs

- Release
- Working

###Table

| Objects         | Messages      |    
| -------------   |:-------------:|
| Person          |               |
| Bike            | is_working    |   
| Docking Station | releases bike |    

Person

  | see_if_working (true/false)

Bike

  | release_bike (if true)

Docking Station


## Exercise 3

We opened IRB and added the following code:

docking_station = DockingStation.new

We got an error.


## Exercise 4

Here are details of the error we got from the IRB stack trace:

Error type: NameError: uninitialized constant
Path: /usr/local/bin/irb
Line number: 11

The error means that there is no class with a method that has been defined or required.
Therefore the class cannot be found.

Create a file with the class and method to make a DockingStation object. And require this from IRB.

## Exercise 5

Created boris_bike_spec folder and added describe DockingStation do end

## Exercise 6  

Run test and it passed.
