% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
num(1..9).

sudoku(X,Y,N) :- initial(X,Y,N).

1{sudoku(X,Y,N): num(N)}1 :- num(X), num(Y). % Sets unique N in every box
1{sudoku(X,Y,N): num(X)}1 :- num(N), num(Y). % Makes sure a number only appears once per row
1{sudoku(X,Y,N): num(Y)}1 :- num(X), num(N). % Makes sure a number only appears once per column

:- sudoku(X,Y,N), sudoku(X1,Y1,N), X!=X1, Y!=Y1, (((X-1)/3)*3 + (Y-1)/3) == (((X1-1)/3)*3 + (Y1-1)/3).

#show sudoku/3.