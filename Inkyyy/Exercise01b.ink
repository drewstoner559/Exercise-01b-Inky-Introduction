/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends east and west.
There is also a sword on the ground. 
+ [Take the east tunnel] -> east_tunnel
You go east
+ [Take the west tunnel]
You go west -> west_tunnel
* [Pick up the torch] -> torch_pickup
* [Pick up sword] -> sword_pickup
== sword_pickup ==
You have the sword and maybe it will come in handy for later 

== east_tunnel ==
You are in the east tunnel. It is very dark you cannot see anything. You hear a noises up ahead.
+ {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Further into the east cave] -> giant_spider_nest
== giant_spider_nest ==
Oh no! You ran into a giant man eating cave spider. You need to retreat fast! Go Back] -> cave_mouth
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west
+ [You have a strange feeling to keep walking further] ->cave_maze
== cave_maze ==
You have entered a cave maze and are now lost womp womp.
+ [Go Back] -> cave_mouth
=== torch_pickup ===
You now have a torch. May it light the way

* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
-> END
-> END

