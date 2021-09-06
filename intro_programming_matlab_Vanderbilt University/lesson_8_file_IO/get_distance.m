
%The attached Distances.xlsx file contains a spreadsheet with the pairwise
%distances in miles of the top 100 US cities by population. 
%A preview of the spreadsheet is shown below. The first row and first column
%contain the city names using the following format: city name comma space 
%capitalized state abbreviation, e.g., Nashville, TN. Note that 
%the very first cell of the spresheet, A1, is blank. Write a function 
%called get_distance that accepts two character vector inputs representing 
%the names of two cities. The function returns the distance between them 
%as an output argument called distance. For example, the call 
%get_distance('Seattle, WA','Miami, FL') should return 3723. 
%If one or both of the specified cities are not in the file, 
%the function returns -1. Preview of the first five cities of Distances.xlsx

%read file
function [distance] = get_distance(city_a_state, city_b_state)

[~,~,raw] = xlsread('Distances.xlsx')
%find matrix size
[m, n] = size(raw);

% comparing each string of one row of sheet with given name of the city 
%The return result tf is of data type logical
tf = strcmp(city_a_state,raw(1,1:n));

%we sum all the matches 
%match = 1 we have match
match =(sum(tf == 1));
%match = 0 we have not match
if match == 0 
   distance = -1;
   return
end



