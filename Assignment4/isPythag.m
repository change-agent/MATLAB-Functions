% isPythag.m
% This program checks whether the input is a Pythagorean triple.
% Author: Daniel Masters - 583334 (d.masters@student.unimelb.edu.au)

function p = isPythag(a, b, c)

% Case 1: invalid input
if a < 0 || b < 0 || c < 0
    p = -1;

% Case 2: a� + b� = c�
elseif a^2 + b^2 == c^2
    p = 1;

% Case 3: sides do not form Pythagorean triangle 
else
    p = 0;
end