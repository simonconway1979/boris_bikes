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
