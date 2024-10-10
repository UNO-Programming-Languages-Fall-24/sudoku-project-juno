% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
row(1..4).
col(1..4).

initial(X,Y) :- initial(X,Y,N).
empty(X,Y) :- row(X), row(Y), not initial(X,Y).

sudoku(X,Y,N) :- initial(X,Y,N).
1 { sudoku(X,Y,N) : col(N) } 1 :- empty(X,Y).
box_index(X,V) :- row(X), U = X / 2, V = U * 2.
same_box(X, X1) :- row(X), row(X1), box_index(X, XS), box_index(X1, XS).

:- row(X), sudoku(X, Y, N), sudoku(X, Y1, N), Y != Y1.
:- row(Y), sudoku(X, Y, N), sudoku(X1, Y, N), X != X1.
:- same_box(X, X1), same_box(Y, Y1), X != X1, sudoku(X, Y, N), sudoku(X1, Y1, N).
:- same_box(X, X1), same_box(Y, Y1), Y != Y1, sudoku(X, Y, N), sudoku(X1, Y1, N).

#show sudoku/3.
