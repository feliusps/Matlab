%Write a function called trio that takes two positive integer
%inputs n and m. The function returns a 3n-by-m matrix called T.
%The top third of T (an n by m submatrix) is all 1s, 
%the middle third is all 2-s while the bottom third is all 3-s.



function T = trio(n,m)
%first submatrix
x = ones(n,m);
%second submatrix
y=2*x;
%third submatrix
z=3*x;
%end matrix
T=[x;y;z];
end