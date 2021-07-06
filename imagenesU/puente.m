F = imread('puente2.jpg');

P=[75,93];
Q=[94,85];
P1=[75,110];
Q1=[92,95];


subplot(1,1,1);imshow(F);line(P,Q,'Color','r','linewidth',5);line(P1,Q1,'Color','r','linewidth',5);