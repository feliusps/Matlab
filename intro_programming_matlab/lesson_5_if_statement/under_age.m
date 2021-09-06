
%write a function called under_age that take two positives integers scalar
%arguments 1. age that represent someone's age and 2. limit that represent
%an age limit the function return true if the person is younger than the
%age limit . if the second arguments, limit is no provided, it defaults to
%21 you do need to check that the input are positive integer scalars the
%name of the output argument is too_young

function [too_young] = under_age(age, limit)
        
         if nargin < 2 
            limit = 21;
            too_young = age < limit;
        
         else
             if nargin == 2 
                too_young = age < limit;
             end
             
         end

end