%database
    visited_state(integer,integer).

%predicates
    state(integer,integer).

%clauses
    state(2,0).

state(X,Y):- X < 4,
    not(visited_state(4,Y)),
    assert(visited_state(X,Y)),
    write("Fill the 4-Gallon Jug: (",X,",",Y,") --> (", 4,",",Y,")\n"),
    state(4,Y).

    state(X,Y):- Y < 3,
            not(visited_state(X,3)),
            assert(visited_state(X,Y)),
            write("Fill the 3-Gallon Jug: (", X,",",Y,") --> (", X,",",3,")\n"),
            state(X,3).

    state(X,Y):- X > 0,
            not(visited_state(0,Y)),
            assert(visited_state(X,Y)),
            write("Empty the 4-Gallon jug on ground: (", X,",",Y,") --> (", 0,",",Y,")\n"),
            state(0,Y).

    state(X,Y):- Y > 0,
            not(visited_state(X,0)),
            assert(visited_state(X,0)),
            write("Empty the 3-Gallon jug on ground: (", X,",",Y,") --> (", X,",",0,")\n"),
            state(X,0).

    state(X,Y):- X + Y >= 4,
            Y > 0,
            NEW_Y = Y - (4 - X),
            not(visited_state(4,NEW_Y)),
            assert(visited_state(X,Y)),
            write("Pour water from 3-Gallon jug to 4-gallon until it is full: (", X,",",Y,") --> (", 4,",",NEW_Y,")\n"),
            state(4,NEW_Y).


     state(X,Y):- X + Y >=3,
            X > 0,
            NEW_X = X - (3 - Y),
            not(visited_state(X,3)),
            assert(visited_state(X,Y)),
            write("Pour water from 4-Gallon jug to 3-gallon until it is full: (", X,",",Y,") --> (", NEW_X,",",3,")\n"),
            state(NEW_X,3).

     state(X,Y):- X + Y>=4,
            Y > 0,
            NEW_X = X + Y,
            not(visited_state(NEW_X,0)),
            assert(visited_state(X,Y)),
            write("Pour all the water from 3-Gallon jug to 4-gallon: (", X,",",Y,") --> (", NEW_X,",",0,")\n"),
            state(NEW_X,0).

     state(X,Y):- X+Y >=3,
            X > 0,
            NEW_Y = X + Y,
            not(visited_state(0,NEW_Y)),
            assert(visited_state(X,Y)),
            write("Pour all the water from 4-Gallon jug to 3-gallon: (", X,",",Y,") --> (", 0,",",NEW_Y,")\n"),
            state(0,NEW_Y).

     state(0,2):- not(visited_state(2,0)),
            assert(visited_state(0,2)),
            write("Pour 2 gallons from 3-Gallon jug to 4-gallon: (", 0,",",2,") --> (", 2,",",0,")\n"),
            state(2,0).

     state(2,Y):- not(visited_state(0,Y)),
            assert(visited_state(2,Y)),
            write("Empty 2 gallons from 4-Gallon jug on the ground: (", 2,",",Y,") --> (", 0,",",Y,")\n"),
            state(0,Y).

goal:-
makewindow(1,2,3,"4-3 Water Jug Problem",0,0,25,80),
state(0,0).











