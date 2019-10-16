% Prolog program to representation of 'Tower of Hanoi'

move(1,X,Y,_):-                % Assign Function as move() with variables are X,Y
    write('Move disk from '),  % To print the Phrase.
    write(X),                  % Print X.
    write(' to '),
    write(Y),nl.               % Print Y.

move(N,X,Y,Z):-                % Another Function as move() with variables are N,X,Y,Z
    N>1,                       % Check for first value with 1.
    M is N-1,                  % If yes then the value of variable M is N-1.
    move(M,X,Z,Y),             % Execution of this function move() respectively.
    move(1,X,Y,_),
    move(M,Z,Y,X).


%--------------------------Output Queries---------------------------------------------------------------------------------

?- move(3,a,b,c).
Move disk from a to b
Move disk from a to c
Move disk from b to c
Move disk from a to b
Move disk from c to a
Move disk from c to b
Move disk from a to b
true .

?- move(5,a,b,c).
Move disk from a to b
Move disk from a to c
Move disk from b to c
Move disk from a to b
Move disk from c to a
Move disk from c to b
Move disk from a to b
Move disk from a to c
Move disk from b to c
Move disk from b to a
Move disk from c to a
Move disk from b to c
Move disk from a to b
Move disk from a to c
Move disk from b to c
Move disk from a to b
Move disk from c to a
Move disk from c to b
Move disk from a to b
Move disk from c to a
Move disk from b to c
Move disk from b to a
Move disk from c to a
Move disk from c to b
Move disk from a to b
Move disk from a to c
Move disk from b to c
Move disk from a to b
Move disk from c to a
Move disk from c to b
Move disk from a to b
true.
