% numToMaxFib.m
% This program calculates the number of elements in the Fibonacci series
% that are less than or equal to the input.
% Author: Daniel Masters - 583334 (d.masters@student.unimelb.edu.au)


function N = numToMaxFib(M)
% Check for invalid input
if M <= 1
    N = -1;
else
    % Initialise the first values in the Fibonacci series
    a = 1;
    b = 1;
    N = 2;
    sum = a + b;
    % Calculate the Fibonacci series & sum the number of values until input
    % M is reached 
    while sum <= M
        a = b;
        b = sum;
        sum = a + b;
        N = N + 1;
    end
end

