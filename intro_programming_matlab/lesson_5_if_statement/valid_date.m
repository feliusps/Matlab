%Write a function called valid_date that takes three positive integer 
%scalar inputs year, month, day. If these three represent a valid date, 
%return a logical true, otherwise false. The name of the output 
%argument is valid. If any of the inputs is not a positive integer scalar,
%return false as well. Note that every year that is exactly divisible 
%by 4 is a leap year, except for years that are exactly divisible by 100. 
%However, years that are exactly divisible by 400 are also leap years.
%For example, the year 1900 was not leap year, but the year 2000 was.
%Note that your solution must not contain any of the date related built-in
%MATLAB functions.
%matlab help for solution

function valid = valid_date(year, month,day)
 
%check if the imput is correct
if  isscalar(year) && year >0 && year == fix(year)... 
    && isscalar(month)&& month >0 && month == fix(month)&& month <= 12 && ...
    isscalar(day)&& day >0 && day == fix(day) 
       
        
    % check for leap years    
    leap_year = (~mod(year, 4) && mod(year, 100) || ~mod(year, 400));
    %30 days months 4,6,9,11
    %31 days months 1,3,5,7,8,10,12
    %leap month 2 and 28 days
    %check for valid day and month  
   
   %valid date
   valid = (any(month == [4,6,9,11]) && day <= 30) ||... 
           (any(month == [1,3,5,7,8,10,12]) && day <= 31) ||...
           (month == 2 && day <= 28 + leap_year);
       
    

else
    valid = false;
end  
          
end