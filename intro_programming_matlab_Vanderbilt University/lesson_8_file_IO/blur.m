%Write a function called blur that blurs the input image. 
%The function is to be called like this:
%output = blur(img,w);
%where img, the input image is a two-dimensional matrix of grayscale pixel
%values between 0 and 255. Blurring is to be carried out by averaging 
%the pixel values in the vicinity of every pixel. 
%Specifically, the output pixel value is the mean of the pixels
%in a square submatrix of size 2w+1 where the given pixel sits in the 
%center. For example, if w is 1, then we use a 3x3 matrix, that is, 
%we average all the neighboring pixels of the given pixel and itself.
%Only use valid pixels when portions of the blurring matrix fall outside
%the image. For example, the blurred value 
%corresponding to w = 1 at index (1,1) 
%would be the mean of of elements (1,1), (1, 2), (2,1) and (2, 2). 
%Both input img and output output are of type uint8.

function output = blur(img,w)
%variables initialization
[row, col] = size(img);%find size of the image
imgdouble = double(img); %convert to double
output = zeros(row, col); %output matrix
%get the submatices index
for ii = 1:row
    for jj = 1:col
%get the submatrix index
    r1 = ii-w;
            r2 = ii+w;
            c1 = jj-w;
            c2 = jj+w;
            % Test that indices are valid
            % If not, set to min/max that is valid
            if r1 < 1
                r1 = 1;
            end
            if r2 > row
                r2 = row;
            end
            if c1 < 1
                c1 = 1;
            end
            if c2 > col
                c2 = col;
            end
            % Get the submatrix and assign the mean to the output pixel
            m = imgdouble(r1:r2, c1:c2);
            output(ii,jj) = mean(m(:));
     end
end
    % convert back to uint8
    output = uint8(output);
end
        

