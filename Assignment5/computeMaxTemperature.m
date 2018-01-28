% computeMaxTemperature.m
% This program takes a temperature data file and provides the location ID
% and maximum temperature for each location.
% Author: Daniel Masters - 583334 (d.masters@student.unimelb.edu.au)

function [loc_id max_temp] = computeMaxTemperature(file_name)

fid = fopen(file_name, 'r');
if fid == -1
    % If file open fails, return -1 to the output variables  
    [loc_id, max_temp] = deal(-1);
else 
    % Store data from file in temporary vector A 
    A = fscanf(fid, '%d\n', [inf]);
    fclose(fid);
end

v = vec2mat(A, 13);
% Store each value in the first column as loc_id 
loc_id = v(:,1)';
 % Find the maximum temperature, store in max_temp; discard matrix_max by         x %                                                                                 14
 % using temporary vector 'A' from above.   
[max_temp A] = computeMatrixMax(v(:,2:length(v)));