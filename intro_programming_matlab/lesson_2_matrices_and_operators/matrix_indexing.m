

%given matrix A assign second column of A to a variable v. 
%afterward change each element of the last row of A to 0

A = [1:5; 6:10; 11:15; 16:20];
disp(A)

v = A(:, 2);
disp(v);

A(end, :) = 0;
disp(A)

