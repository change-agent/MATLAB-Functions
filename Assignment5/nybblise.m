% nybblise.m
% This program takes binary digital signal stored in a vector & breaks it
% into 4-bit nybbles.
% Author: Daniel Masters - 583334 (d.masters@student.unimelb.edu.au)

function A = nybblise(d)
% Initialise variables
num_bits = 4;
num_cols = length(d)/num_bits;

if rem(length(d), num_bits) == 0
    i = 1;
    % Insert a column
    for col = 1:num_cols
        % Start a new row
        row = 1;
        % Loop through vector d four bits at a time & insert each bit into
        % a new row
        while row < 5
            A(row, col) = d(i);
            row = row + 1;
            i = i + 1;
        end
    end
else
    % Return -1 if d is not a multiple of 4
    A = -1;
end