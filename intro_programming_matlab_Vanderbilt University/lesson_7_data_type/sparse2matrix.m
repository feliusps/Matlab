%A sparse matrix is a large matrix with almost all elements of the same 
%value (typically zero). The normal representation of a sparse matrix 
%takes up lots of memory when the useful information can be captured 
%with much less. A possible way to represent a sparse matrix is with
%a cell vector whose first element is a 2-element vector representing 
%the size of the sparse matrix. The second element is a scalar specifying
%the default value of the sparse matrix. Each successive element of 
%the cell vector is a 3-element vector representing one element of 
%the sparse matrix that has a value other than the default. 
%The three elements are the row index, the column index and 
%the actual value. Write a function called "sparse2matrix" 
%that takes a single input of a cell vector as defined above and returns 
%the output argument called "matrix", the matrix in its traditional form.
%Consider the following run:

%cellvec = {[2 3], 0,[1 2 3],[2 2 -3]}
%matrix = sparse2matrix(cellvec)
         
%         0 3 0
%matrix = 
%        0 -3 0
        
function matrix = sparse2matrix(cellvec)
%multiply the first element x second element after creating a 2x3 matrix
matrix = cellvec{2}*ones(cellvec{1});
disp(cellvec{1})
disp(ones(cellvec{1}))
disp(matrix)
disp(size(cellvec, 2))
for m = 3:size(cellvec,2)
    matrix(cellvec{m}(1), cellvec{m}(2))= cellvec{m}(3);

end