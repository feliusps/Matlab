%Write a function called char_counter that counts the number 
%of a certain character in a text file. 
%The function takes two input arguments, fname, 
%a char vector of the filename and character,
%the char it counts in the file. The function returns charnum, 
%the number of characters found. 
%If the file is not found or character is not a valid char, 
%the function return -1. As an example, consider the following run. 
%The file "simple.txt" contains a single line: 
%"This file should have exactly three a-s..."

function charnum = char_counter(file_name, character)
    fid = fopen(file_name, 'rt');% open file file name and permission
   
    % check file is valid
    %%ischar(charater) returns logical 1 (true) if character is a character
    %%array and logical 0 (false) otherwise.
    if fid < 0 || ~ischar(character)%file will execute only if we have a valid file open / tilde logical not
        charnum = -1;
        return;
    end
    
    charnum = 0;
    %read file as a set of strings one string per line
    oneline = fgets(fid);
    while ischar(oneline)
        charnum = charnum + sum(oneline == character);
        oneline = fgets(fid);
    end
   fclose(fid);  %close file  
end

