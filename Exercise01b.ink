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
You are at the entrance to a cave! {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.
 
+ [Take the east tunnel.] -> east_tunnel

+ [ The west tunnel.] -> west_tunnel
* [Pick up the torch.] -> torch_pickup
+ [Run out of the cave.] -> run_out

== east_tunnel ==
You are in the east tunnel. It is very dark,{run_out:you can't see anything but you hear hissing!}

* {torch_pickup} [Light torch] -> east_tunnel_lit
+ [Go back] -> cave_mouth
-> END
== run_out ==
+ {run_out} [Run out of the cave.] -> run_out
+ [Run] -> run_out
You turn and run out of the cave!
-> END


== west_tunnel ==
You are in the west tunnel. It is lit by a crack in the top of the cave.
+ [Go back] -> cave_mouth

-> END

=== torch_pickup ===
You now have a torch. May it light the way.
+ [Go back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of snakes in the room.
-> END

-> END



