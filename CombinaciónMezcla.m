%combinacion mezcla
%13-04-18

F = imread('imagenesU\moon2.jpg');
G = imread('imagenesU\otra.jpg');


[r1,c1] = size(F);
[r2,c2] = size(G);

r = min(r1,r2);
c = min(c1,c2);