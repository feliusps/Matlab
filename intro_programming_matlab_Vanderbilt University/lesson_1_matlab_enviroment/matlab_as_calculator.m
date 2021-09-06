%we barrowed $1000 at a 10% annual interest rate .If we did not make a
%payment for two years, and assuming there is no penalty for non-payment,
%how much do we owe now.
%assign the result to variable colled debt

%======================
%compound interest
%======================
%debt = the future value of the investment/loan, including interest
%P = the principal investment amount (the initial deposit or loan amount)
%r = the annual interest rate (decimal)
%n = the number of times that interest is compounded per unit t
%t = the time the money is invested or borrowed for

P = 1000; % dollars
r = 10/100; %10 percent interest
n = 1;
t = 2;

debt = P*(1 +(r/n))^(n*t);
disp(debt)



