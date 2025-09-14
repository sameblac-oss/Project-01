/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/

VAR health = 6
VAR clothing = 0
VAR intelligence = 10
VAR hunger = 1
VAR dehydration = 2
VAR flashlight = 0

-> woods_entrance

=== woods_entrance ===
You are at the entrance to the woods. {not flashlight_pickup:There is a flashlight in your backpack.} The woods goes north, east, and west. 
+ [Take the north path] -> north_path
+ [Take the east path] -> east_path
+ [Take the west path] -> west_path
* [Pick up the flashlight] -> flashlight_pickup
-> END

=== flashlight_pickup ===
You now have a flashlight. You can see in the woods. 
* [Go Back] -> woods_entrance
-> END


== north_path ==
You enter the woods and take the north path. It is very dark, you can't see anything.
* {flashlight_pickup} [Use Flashlight] -> north_path_lit
+ [Go Back] -> woods_entrance
-> END

=== north_path_lit ===
The north path is lit. You see a sleeping bear. You have high intelligence and realize the danger. You turn around and go back.
+ [Go Back] -> woods_entrance
-> END

=== east_path ===
You enter the woods and take the east path. It is very dark, you can't see anything.
* {flashlight_pickup} [Use Flashlight] -> east_path_lit
+ [Go Back] -> woods_entrance
-> END

=== east_path_lit ===
The east path is lit. You see a river bank. 
+ [Go to river] -> river_bank
+ [Go Back] -> woods_entrance
-> END

=== west_path ===
You enter the woods and take the west path. It is very dark, you can't see anything. 
* {flashlight_pickup} [Use Flashlight] -> west_path_lit
+ [Go back] -> woods_entrance
-> END

=== west_path_lit ===
The west path is lit. You see an abandoned camp. 
+ [Go to abandoned camp] -> abandoned_camp
-> END

=== river_bank ===
You continue to the bank of the river. You are very dehydrated and drink the water. It is very refreshing and relives your thirst. 
+ [Go back] -> woods_entrance
-> END

=== abandoned_camp ===
You continue to the abandoned camp and find a cooked rabbit that seems to have been leftover. You are very hungry and decide to eat it. It is delicious 
+ [Go back] -> woods_entrance
-> END







