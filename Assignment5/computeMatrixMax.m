% computeMatrixMax.m
% This program takes a matrix as input and returns the maximum values of
% each row, and maximum value of the entire matrix.
% Author: Daniel Masters - 583334 (d.masters@student.unimelb.edu.au)

function [row_max matrix_max] = computeMatrixMax(A)

A_size = size(A);
next_col = 1;
i = 1;
% Loop through each row
for row = 1:A_size(1)
    % Loop through each column
    for col = 1:A_size(2)
        % Check bounds to prevent indexing beyond number of columns in A
        if next_col < A_size(2)
            next_col = next_col + 1;
            % Set the next number as max if it is greater than the
            % current number.
            if A(row, next_col) > A(row,col)
                max = A(row,col+1);
            end
        % If reached end of the row, reset column index
        elseif next_col == A_size(2)
            next_col = 1;
        end
    end
    % After finishing the loop, max is the largest number in the row;
    % therefore, set row_max accordingly.
    row_max(i) = max;
    if length(row_max) > 1
        % If the newly added value is the largest in the matrix, update
        % matrix_max.
        if row_max(i) > row_max(i-1)
            matrix_max = row_max(i);
        end
    else
        % If there is only 1 max value, it is automatically the largest
        matrix_max = row_max(1);
    end
    % Increment row_max index
    i = i + 1;
end