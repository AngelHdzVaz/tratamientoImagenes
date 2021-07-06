%Angel F hernandez
%Histograma

F=imread('imagenesU\moon2.jpg');
[r,c]=size(F);

G=F;
X=[0,32,64,96,128,160,192,224];
P=[0,0,0,0,0,0,0,0];
T=0;
C=[0,0,0,0,0,0,0,0];
N=[0,0,0,0,0,0,0,0];

for i=1:r;
  for j=1:c;
    if (0<=F(i,j) && F(i,j)<32)
      P(1)=P(1)+1; end
    if (32<=F(i,j) && F(i,j)<64)
      P(2)=P(2)+1; end
    if (64<=F(i,j) && F(i,j)<96)
      P(3)=P(3)+1; end
    if (96<=F(i,j) && F(i,j)<128)
      P(4)=P(4)+1; end
    if (128<=F(i,j) && F(i,j)<160)
      P(5)=P(5)+1; end
    if (160<=F(i,j) && F(i,j)<192)
      P(6)=P(1)+1; end
    if (192<=F(i,j) && F(i,j)<224)
      P(7)=P(7)+1; end
    if (224<=F(i,j) && F(i,j)<256)
      P(8)=P(8)+1; end
   end
end


for i=1:8;
  T=T+P(i); end
  C(1)=P(1);
  
for i=2:8
  C(i)=C(i-1)+P(i);
  end

for i=1:8;
  N(i)=C(i)/T; end


for i=1:r;
  for j=1:c;
    if(F(i,j)>=0 && F(i,j)<32)
      G(i,j)=F(i,j)+130; end
    if(F(i,j)>=32 && F(i,j)<64)
      G(i,j)=F(i,j); end
    if(F(i,j)>=64 && F(i,j)<96)
      G(i,j)=F(i,j)+70; end
    if(F(i,j)>=96 && F(i,j)<128)
      G(i,j)=F(i,j); end
    if(F(i,j)>=128 && F(i,j)<160)
      G(i,j)=F(i,j); end
    if(F(i,j)>=160 && F(i,j)<192)
      G(i,j)=F(i,j)-20; end
    if(F(i,j)>=192 && F(i,j)<224)
      G(i,j)=F(i,j)-40; end
    if(F(i,j)>=224 && F(i,j)<=255)
      G(i,j)=F(i,j)-80; end
    end
end

subplot(2,2,1);imshow(F)
subplot(2,2,2);hist(F,X)
subplot(2,2,3);plot(X,N,'LineWidth',3)
subplot(2,2,4);imshow(G)