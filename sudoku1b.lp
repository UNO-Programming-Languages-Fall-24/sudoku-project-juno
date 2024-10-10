% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
subgrid(2).

num(1..S*S) :- subgrid(S). % Figures out how many number boxes there are based on subgrid size

sudoku(X,Y,N) :- initial(X,Y,N).

1{sudoku(X,Y,N): num(N)}1 :- num(X), num(Y). % Sets unique N in every box
1{sudoku(X,Y,N): num(X)}1 :- num(N), num(Y). % Makes sure a number only appears once per row
1{sudoku(X,Y,N): num(Y)}1 :- num(X), num(N). % Makes sure a number only appears once per column


#show sudoku/3.