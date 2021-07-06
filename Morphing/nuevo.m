clear all
im1=imread('im1.jpg');
im2=imread('im2.jpg');
%%Blanconegro
%%[r1,c1]=size(im1);
%%[r2,c2]=size(im2);
%%Color
[r1,c1,d1]=size(im1);
[r2,c2,d2]=size(im2);

r=min(r1,r2);
c=min(c1,c2);

im1=resize(im1,[r c 3]);
im2=resize(im2,[r c 3]);

n=2;

for i=1:n
  %%B/N 
  %im3(:,:)=intermediate(im1,im2,n,i,r,c);
  %%Color
  im3(:,:,1)=intermediate(im1(:,:,1),im2(:,:,1),n,i,r,c);
  im3(:,:,2)=intermediate(im1(:,:,2),im2(:,:,2),n,i,r,c);
  im3(:,:,3)=intermediate(im1(:,:,3),im2(:,:,3),n,i,r,c);
  im3=cat(3,im3(:,:,1),im3(:,:,2),im3(:,:,3));
  imshow(uint8(im3));
  pause(0.05)
end

for i=1:n
  
  im3(:,:,1)=intermediate(im1(:,:,1),im2(:,:,1),n,i,r,c);
  
  ind = mat2str(i);
  nom = strcat('im3',ind,'.jpg');
  imwrite(im3,nom);
  
  
 end