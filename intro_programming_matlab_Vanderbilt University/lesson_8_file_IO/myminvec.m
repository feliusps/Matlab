%find the minimun or maximun value in a vector
%1. the working minimun(the minimun that has been found so far )is the firt
%   element in the vector to beguin with
%2. loop through the rest of the vector(from the second element to the end)
%    if any element is less that the working minimun, 
%    then that element is the new working minimun

function outmin = myminvec(vec)
%myminvec returns the minimun value in a vector
%format : muminvec(vector)
outmin = vec(1);
for i = 2:length(vec)
    if vec(i) < outmin
        outmin = vec(i);
    end
end
end
