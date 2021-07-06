%Prog. Angel F. Hernandez Vázquez
%operador reduccion de escala de grises 15/02/18
%0,q1,q2......qn
%8 umbrales

clear all
F = imread('imagenesU\moon2.jpg');
[r,c]=size(F);
G=F;
%recorriendo imagen


%0-31 =255
%32-63 = 192
%64-95 = 160
%96-127 =128
%128-159 =96
%160-191 = 64
%192-223 = 32
%224-255 = 0
for i = 1: r
  for j = 1:c
    
    if(F(i,j)>223&&F(i,j)<=255);G(i,j)=0; end
    
    if(F(i,j)>191&&F(i,j)<=223);G(i,j)=32; end
    
    if(F(i,j)>159&&F(i,j)<=191);G(i,j)=64; end
    
    if(F(i,j)>127&&F(i,j)<=159);G(i,j)=96; end
    
    if(F(i,j)>95&&F(i,j)<=127);G(i,j)=128; end
    
    if(F(i,j)>63&&F(i,j)<=95);G(i,j)=160; end
    
    if(F(i,j)>31&&F(i,j)<=63);G(i,j)=192; end
    
    if(F(i,j)>0&&F(i,j)<=31);G(i,j)=255; end
        
   
 end
 end
 
 
 
subplot(1,2,1); imshow(G);title('Imagen Umbral de la escala 128')
subplot(1,2,2); imshow(F);title('Imagen Original')