%Write a function called saddle that finds saddle points in 
%the input matrix M. For the purposes of this problem,
%a saddle point is defined as an element whose value is greater than 
%or equal to every element in its row, and less than or equal to 
%every element in its column. Note that there may be more than 
%one saddle point in M. Return a matrix indices that has exactly 
%two columns. Each row of indices corresponds to one saddle point 
%with the first element of the row containing the row index of the 
%saddle point and the second column containing the column index. 
%If there is no saddle point in M, then indices is the empty array.

%what is a saddle points
%saddle points critical  points that are not a local maximum or minimum
%are most commonly saddle points
%A point (a,b) of a function f(x,Y) is a saddle point if
% 1 it is a critical point of f and
% 2 it is a crossing of two contour lines
% 3 the surface is shaped like a saddle around the critical point: concave up
%   in one direction, concave down in another.



function indices = saddle(M)
% function saddle find the saddle point of a matrix
%format: saddle(matrix)

[r, c] = size(M);
%create emty array to allocate output
indices = [];

for i = 1:r
    for j= 1:c
        if (M(i,j) >= M(i,:) & M(i,j) <= M(:,j)) %accord with def above
           indices = [indices; i,j];
        end
    end
end
end
            

