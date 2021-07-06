%%03/05/2018
%%Angel F Hernandez Vazquez
%%ReflexionH

F=imread('disp.jpg');
[r,c,t]=size(F);

G=zeros(r,2*c,t);
H=uint8(G);
H(:,1:c,:)=F;
i=1:c;
H(:,(2*c)-i,:)=F(:,i,:);

imshow(H)