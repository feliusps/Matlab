% Write a function called taxi_fare that computes the fare of a taxi ride.
% It takes two inputs: the distance in kilometers (d) and the amount of wait
% time in minutes (t). The fare is calculated like this: the first km is $5
% every additional km is $2 and every minute of waiting is $0.25. 
%Once a km is started, it counts as a whole (Hint: consider the ceil built-in
% function). The same rule applies to wait times. You can assume that d >0
% and t >= 0
% but they are not necessarily integers. 
% The function returns the fare in dollars. 
% For example, a 3.5-km ride with 2.25 minutes of wait costs $11.75.
% Note that loops and if-statements are neither necessary nor allowed.

function [about_first] = taxi_fare(distance, time)
         %first km if distance is < 1 and there is a wait time
         %it is no passing with wait time in the firs km but I think need
         %to be there 
         first_km = 5 *(1) + ceil(time)*.25; 
         %after first km and there is a weit time
         about_first = (2 * ceil(distance - 1)) + (ceil(time)*.25);
         %total cost of the trip
         about_first = first_km + about_first;
         
         disp(about_first);
end
         
        