% computeDistance.m
% This program calculates the distance between 2 points (x1, y1) & (x2, y2)
% Author: Daniel Masters - 583334 (d.masters@student.unimelb.edu.au)

function d = computeDistance(p1, p2)

% Calculate sqrt((x? - x?)² + (y? - y?)²) and store in d
d = sqrt((p2(1)-p1(1))^2 + (p2(2) - p1(2))^2);

end