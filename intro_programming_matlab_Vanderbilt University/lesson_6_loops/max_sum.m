%Write a function called max_sum that takes v a row vector of numbers &
%n,a positive integer as inputs.The function needs to find n consecutive
%elements of v whose sum is largest possible.
%in other wors, if v is[1 2 3 4 5 4 3 2 1] and n is 3 it will find 4 5 and
%4 because their sum of 13 is the largest of any 3 consecutives elements of
%v if multiple such sequences exist in v, max_sum return the first one. the
%function returns summa, the sum as the first output argument and index, 
%the index of the first element of the n consecutive ones as the second 
%output. if the input n is larger than the number of elements of v the 
%function return 0 as the sum and -1 as the index.

function [summa, index] = max_sum(v, n) 

[~, N] = size(v);

summa = -inf; %preallocation addition one element

if n > N
    summa = 0;
    index = -1;
    return
else
     for i = 1:(N-n+1)
         s = sum(v(i:i+n-1));
         if s > summa
             summa = s;
             index = i;
         end
     end
end