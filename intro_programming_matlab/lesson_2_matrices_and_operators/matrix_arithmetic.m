
%given a matrix A
A = [1:5; 6:10; 11:15; 16:20];
disp(A)

%create  a row vector of 1's that has the same number of elements as A has
%row

rv = ones(1, size(A , 1)); %first column all rows size(A, 1)
disp(rv);
size(rv);

%create a column vector of 1's that has the same number of elements as A
%has column
cv = ones(size(A , 2), 1); %query only the second dimension
disp(cv);


% using matrix multiplication assign the products of the row vector
% the matrix A and the column vector to the variable result
result = rv * A * cv;
disp(result);
