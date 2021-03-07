%1. as early 2018, usain Bolt hold the world record in the men 100 meter dash
%   it is 9.58 second. what was his average speed in km/h? assign the result
%   to a variable called hundred.

%2. kenyan  eliud kipchoge set a new world record for men of 2:01:39 on
%   september 16, 2018. assign his average speed in km/h to the variable
%   marathon. the marathon distance is 42.195 kilometers  


%1. data distance = 100 meters time = 9.58 seconds

%convert meters to kilometers
km1 = 100 / 1000;
%comvert seconds to hours
hr1 = (9.58 / 60)/60;
%averege speed
hundred = km1 / hr1; % in kilometer / hours
display(hundred);

%2. data time 2:01:39, distance = 42.195 speed = ?

%kilometers
km2 = 42.195;
%comvert seconds to hours and minutes to hours
hr2 = 2 + (1 / 60) + ((39 /60) / 60);
%averege speed
marathon = km2 / hr2;
display(marathon); %kilometers /hours