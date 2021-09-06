%Caesar's cypher is the simplest encryption algorithm.
%It adds a fixed value to the ASCII (unicode) value of each character of a text.
%In other words, it shifts the characters. Decrypting a text is simply 
%shifting it back by the same amount, that is, it substract the same value
%from the characters. Write a function called caesar that accepts two
%arguments: the first is the character vector to be encrypted, while 
%the second is the shift amount. The function returns the output 
%argument coded, the encrypted text. The function needs to work with 
%all the visible ASCII characters from space to ~. The ASCII codes of 
%these are 32 through 126. If the shifted code goes outside of this range,
%it should wrap around. For example, if we shift ~ by 1, the result should
%be space. If we shift space by -1, the result should be ~

function coded = caesar(vector_to_be_encrypted, shift)
  
   %encryption shift to right
   %unencryption shift to left
   encrypted_vector = vector_to_be_encrypted + shift;
   
   %he ASCII codes of these are 32 through 126 length(32:126)= 95
   %each time you run off one end of the list of ASCII codes, 
   %to wrap around once, you need to adjust your counter by 95.
      for i = 1:length(encrypted_vector)
          
          while encrypted_vector(i)< 32
              encrypted_vector(i)= encrypted_vector(i)+95;
          end
          while encrypted_vector(i)> 126
              encrypted_vector(i)= encrypted_vector(i)-95;
          end
          
      end
coded = char(encrypted_vector);

end