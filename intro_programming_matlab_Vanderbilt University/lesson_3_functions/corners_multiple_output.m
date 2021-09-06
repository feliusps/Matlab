%Write a function called corners that takes a matrix as an input argument
%and returns four outputs: the elements at its four corners in this order:
%top_left, top_right, bottom_left and bottom_right.
%(Note that loops and if-statements are neither necessary nor allowed as we
%have no covered yet)
%test
%A = randi(100,4,5) and A = [1:2]

function [top_left, top_right, bottom_left, bottom_right] = corners(A)
         %matrix
         disp(A)
         top_left = A(1,1);          %top left
         disp(top_left);
         top_right = A(1,end);       %top right
         disp(top_right)
         bottom_left = A(end,1);     %bottom left
         disp(bottom_left)
         bottom_right = A(end,end);  %bottom right
         disp(bottom_right)
         
end
