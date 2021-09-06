%create a function that sum each individual row in a matrix
%a nested loop will be need it that return a row vector

function outsum = matrowsum(mat)
%matrowsum find the sum on every row in a matrix
%returns a vector of the row sums
%format: matcolsum(matrix)

[row, col] = size(mat); %column size(jxi)

%preallocate the vector to the number of columns
outsum = zeros(row,1);

%every row is being sumed so the outer loop 
%has to be over the row

for j = 1:row
    %initialize the running sum to 0 for every column
    runsum = 0;
    for i = 1:col
        runsum = runsum + mat(j,i);
    end
    outsum(j) = runsum; %resulting member of the vector
end
end 
