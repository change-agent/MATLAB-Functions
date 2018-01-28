% computeFlow.m
% This program computes the flow of an object.
% Author: Daniel Masters - 583334 (d.masters@student.unimelb.edu.au)

function f = computeFlow(object_speed, sound_speed)

% Test for valid input
if object_speed < 0 || sound_speed < 0
    fprintf('You must enter a number greater than or equal to 0\n')
    f = NaN;
    return
end

% Define variables
subsonic = -1;
transonic = 0;
supersonic = 1;
Mach = object_speed/sound_speed;

% Using Mach number, compute whether flow is subsonic, supersonic, or
% transonic
if Mach < 1
    f = subsonic;
elseif Mach > 1
    f = supersonic;
elseif Mach == 1
    f = transonic;
end

end
    
    