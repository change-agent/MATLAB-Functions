% computeArea.m
% This program calculates the area of a triangle, given the coordinates of
% the 3 points that define the triangle.
% Author: Daniel Masters - 583334 (d.masters@student.unimelb.edu.au)

function a = computeArea(p1, p2, p3)

% Find the distance between each of the points to determine the length of
% each side
a_side = computeDistance(p1, p2);
b_side = computeDistance(p2, p3);
c_side = computeDistance(p1, p3);

% Find s, where s is equal to half the sum of the lengths of the 3 sides
s = (a_side+b_side+c_side)/2;

% Calculate area = ?s*(s-a_side)*(s-b_side)*(s-c_side)
a = sqrt(s*(s-a_side)*(s-b_side)*(s-c_side));

end