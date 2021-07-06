%%Rotación
%%Angel F Hernandez Vazquez

%%03/05/2018

F=imread('disp.jpg');
[r,c,t]=size(F);

G=zeros(2*r,2*c,t)*70;
H=uint8(G);
H=F
ang=input('De el angulo en grados: ');
th=(pi/180)*ang;
 
for i=1:r;
  for j=1:c;
    X=ceil(abs((i+cos(th))+(j*sin(th))))+50;
    Y=ceil(abs((-i+sin(th))+(j*cos(th))))+100;
    H(X,Y,:)=F(i,j,:);
  end
end

subplot(1,2,1);imshow(F),title('original')
subplot(1,2,2);imshow(H),title('Rotacion')  