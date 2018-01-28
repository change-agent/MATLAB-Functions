% computeInsulinConc.m
% This program computes a body's concentration of insulin at any time.
% Author: Daniel Masters - 583334 (d.masters@student.unimelb.edu.au)

function c = computeInsulinConc(C0, m, t)
% Initialise variables
c = t;
i = 1;
% Iterate through vector and calculate required values.
% C0 - initial insulin concentration
% m - mass of the subject in kg
% t - time since initial concentration of insulin in minutes
while i <= size(t)
    c(i) = C0*exp(-30*t(i)/m); 
    i = i+1;
end