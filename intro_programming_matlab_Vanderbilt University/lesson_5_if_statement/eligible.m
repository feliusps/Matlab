%Write a function called eligible that helps the admission officer of 
%the graduate school  of Vanderbilt University decide whether 
%the applicant is eligible for admission based on GRE scores.
%The function takes two positive scalars called v and q as input and 
%return the logical admit as output. they represent the percentiles of the 
%verbal and quantitative portion of the gre respectively you do no need to
%check the input. the applicant is elegible if the average percentile is 
%at least 92% and both of the individual percentiles are over 88% the
%fuction return logical or false value

function [admit] = eligible(v, q) 

         percentil = mean([v  q]);
         
         if (percentil >= 92 && (q > 88 && v > 88))
            admit = true;
         else
             admit = false;
             
         end

%====another way==== 
%admit = mean([verbal quant]) >= 92 && verbal > 88 && quant > 88;

return