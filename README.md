Boris Bike Project

#Wednesday (Simon working with Asuka)

## Step 1
Firstly we spent some time getting out git repositories in sync.
This was a bit tricky. Here is what we did:

- 1. We decided to use Asuka's repository
- 2. Asuka copied her Tuesday branch into a new wednesday branch
- 3. Simon forked Asuka's Boris_Bike repo
- 4. Simon cloned the wednesday branch of the repo onto his local machine

*git clone -b <branch_name> <repo_address>*

- 5. Simon made a wednesday branch in his Boris_Bike project on his local machine

*git checkout -b <branch_name>*

- 6. Simon manually copied the files into his Boris_Bikes project
- 7. Simon checked he was pointed at his remote repo

*git config --get remote.origin.url*

- 8. Simon checked he was pointed at the correct branch

*git branch*

- 9. Simon pushed the files into his remote repo

*git push*

- 10. To set up gitpong we both added another remote repo:

*git remote add <pair name> <URL to pair partners repo>*

Simon added without https (That's how is remote origin is set up)
Asuka added with https (That's how her remote origin is set up)

The main thing is that origin and the additional remote are set up the same.

- 11. We actually added an incorrect remote so we needed to delete it again:

*git remote -v*
*git remote rm <remote name>*

- 12. We're now set up for gitpong.

- 13. When we want to update Asuka's repo, she does a pull request from Simon's repo

*git pull simonconway1979 wednesday*


## Exercise 11

### User Story

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

###Nouns
- member of the public => person
- bike
- docking station

###Verbs
- return
- hire
- dock
- decide
- use
- see

###Table
| Objects        | Messages       |
| :------------- | :------------- |
| person         |                |
| bike           | dock           |
| docking station| dock  bike     |
| docking station| see  bike      |


## Changes in Exercise 11

- 1. We added a test to respond to a method called dock_bike.
The aim of this method is to allow a bike to be docked.
When a bike is docked a new bike is created in the dock.
Then we updated the rspec tests so firstly the method dock_bikes was there and then the method dock_bikes returns a new bike.

- 2. We added a test to respond to a method called bike. The aim of this method is to show the bikes in the dock.
Firstly we added an rspec test to see that there was a method. Then got this test to pass.
Then we added an rspec test that bike should show the bikes.
We added an attr reader method so that bike shows the bike.


## Exercise 12
