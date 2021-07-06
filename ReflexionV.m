%%03/05/2018
%%Angel F Hernandez Vazquez
%%ReflexionH

F=imread('cesped.jpg');
[r,c,t]=size(F);

G=zeros(2*r,c,t);
H=uint8(G);
H(1:r,:,:)=F;
i=1:r;
H((2*r)-i,:,:)=F(i,:,:);

imshow(H)