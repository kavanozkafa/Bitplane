%okuma islemi
a=imread('audrey.jpg');
ad=double(a);

%8bitplane 
c0=mod(ad,2);
c1=mod(floor(ad/2),2);
c2=mod(floor(ad/4),2);
c3=mod(floor(ad/8),2);
c4=mod(floor(ad/16),2);
c5=mod(floor(ad/32),2);
c6=mod(floor(ad/64),2);
c7=mod(floor(ad/128),2);

%not larý alýnýyor
c1=~c1;
c3=~c3;
c5=~c5;
c7=~c7;

%matrisleri toplama islemi
adtemp=c0*1+c1*2+c2*2+c3*8+c4*16+c5*32+c6*64+c7*128;

%1.combine goruntuyu gosterme
% adtemp=uint8(adtemp);
 % imshow(adtemp);

 
 %ayný islemler 2.kez uygulanacak
c0=mod(adtemp,2);
c1=mod(floor(adtemp/2),2);
c2=mod(floor(adtemp/4),2);
c3=mod(floor(adtemp/8),2);
c4=mod(floor(adtemp/16),2);
c5=mod(floor(adtemp/32),2);
c6=mod(floor(adtemp/64),2);
c7=mod(floor(adtemp/128),2);

c1=~c1;
c3=~c3;
c5=~c5;
c7=~c7;


%matrisleri toplama islemi
adfinal=c0*1+c1*2+c2*2+c3*8+c4*16+c5*32+c6*64+c7*128;

%olusan goruntuyu gosterme
adfinal=uint8(adfinal);
imshow(adfinal)
