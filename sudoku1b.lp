% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
num(1..4).

sudoku(X,Y,N) :- initial(X,Y,N).

1{sudoku(X,Y,N): num(N)}1 :- num(X), num(Y). % Sets unique N in every box
1{sudoku(X,Y,N): num(X)}1 :- num(N), num(Y). % Makes sure a number only appears once per row
1{sudoku(X,Y,N): num(Y)}1 :- num(X), num(N). % Makes sure a number only appears once per column

subgrid(1,1,1) :- sudoku(1,1,_).
subgrid(1,2,1) :- sudoku(1,2,_).
subgrid(1,3,2) :- sudoku(1,3,_).
subgrid(1,4,2) :- sudoku(1,4,_).
subgrid(2,1,1) :- sudoku(2,1,_).
subgrid(2,2,1) :- sudoku(2,2,_).
subgrid(2,3,2) :- sudoku(2,3,_).
subgrid(2,4,2) :- sudoku(2,4,_).
subgrid(3,1,3) :- sudoku(3,1,_).
subgrid(3,2,3) :- sudoku(3,2,_).
subgrid(3,3,4) :- sudoku(3,3,_).
subgrid(3,4,4) :- sudoku(3,4,_).
subgrid(4,1,3) :- sudoku(4,1,_).
subgrid(4,2,3) :- sudoku(4,2,_).
subgrid(4,3,4) :- sudoku(4,3,_).
subgrid(4,4,4) :- sudoku(4,4,_).

#show subgrid/3.
#show sudoku/3.