% write a function called minimax that take M a matrix input argument and
% return mmr a row vector containing the absolute value of the difference
% between the maximun and minimun value element in each row. As a second
% output argument called mmm, it provides the difference between the 
%maximun %and minimun element in the entire matrix. see the code below for
%an example:



function [mmr, mmm] = minimax(M)
   %If A is a matrix, then max(A) is a row vector containing the maximum 
   %value of each column ###change to transpose the key is for each row.##     
   
   %row vector
   mmr = abs(max(M') - min(M'));
   
   %get the maximun and minimun for each column then maximun and minimun
   %of entire resulting values
  
   %entire matrix
   mmm = max(max(M)) - min(min(M));
   