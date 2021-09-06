
%write a function called next_prime that take a scalar positive integer
%input n. use while loop to find and return k the smallest prime number
%that is greater than n feel free to use isprime function


function k = next_prime(n)

      %discard all no prime number  
      while ~isprime(n + 1)
        n = n + 1;
      end
      %loop is terminated because found a prime n+1 = prime 
      k = n + 1; 
end



