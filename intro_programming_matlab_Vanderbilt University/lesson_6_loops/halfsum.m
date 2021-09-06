%Write a function called halfsum that takes as input a matrix
%and computes the sum of the elements that are in the diagonal and are to
%the right of it. The diagonal is defined as the set of those elements
% whose column and row indexes are the same. in other word the function 
%add up the elements in the uppertriangular  part of the matrix.
%the name of the output argument is summa

function summa = halfsum(M)
         
[row, col] = size(M);
%initialize summa
summa = 0;

     %indexes where n=m and above
     for i = 1:row
         summa = summa + sum(M(i, i:col)); 
     end
     
end
     
  