%create a function that sum each individual column in a matrix
%a nested loop will be need it that return a row vector

function outsum = matcolsum(mat)
%matcolsum find the sum on every column in a matrix
%returns a vector of the columns sums
%format: matcolsum(matrix)

[row, col] = size(mat); %column size(ixj)

%preallocate the vector to the number of columns
outsum = zeros(1,col);

%every column is being sumed so the outer loop 
%has to be over the columns

for i = 1:col
    %initialize the running sum to 0 for every column
    runsum = 0;
    for j = 1:row
        runsum = runsum + mat(j,i);
    end
    outsum(i) = runsum; %resulting member of the vector
end
end 
