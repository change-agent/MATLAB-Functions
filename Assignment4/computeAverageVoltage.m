% computeAverageVoltage.m
% This program computes the average voltage from a microphone, as well as
% number of valid samples.
% Author: Daniel Masters - 583334 (d.masters@student.unimelb.edu.au)

function [average_voltage, frac_valid] = computeAverageVoltage(v, voltage_threshold)
% Initialise variables
sum = 0;
num_valid = 0;
% Loop through vector of voltage samples (in volts) and sum.
% Also, count number of valid samples.
for i = v
    if i >= voltage_threshold
        sum = sum + i;
        num_valid = num_valid + 1;
    end
end
% Check for number of valid samples before finding average
if num_valid > 0
    average_voltage = sum/num_valid;
else
    average_voltage = 0;
end
% Compute fraction of valid samples
frac_valid = num_valid/length(v);