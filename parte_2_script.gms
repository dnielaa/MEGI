VARIABLE Z;
POSITIVE VARIABLE 
xa1,xa2,xa3,xb1,xb2,xb3,xc1,xc2,xc3,xd1,xd2,xd3,
g1e,g2e,g3e,g1p,g2p,g3p,g1f,g2f,g3f,g1n,g2n,g3n,
o1e,o2e,o3e,o1p,o2p,o3p,o1f,o2f,o3f,o1n,o2n,o3n,
q1e,q2e,q3e,q1p,q2p,q3p,q1f,q2f,q3f,q1n,q2n,q3n,
total_comprado;

Binary Variables 
br1,br2,br3,
bm1e, bm1p, bm1f, bm1n,bm2e, bm2p, bm2f, bm2n,bm3e, bm3p, bm3f, bm3n,
bsa1,bsa2,bsa3,bsb1,bsb2,bsb3,bsc1,bsc2,bsc3,bsd1,bsd2,bsd3,
p1,
bo,bq,bg,
bpide_a,bpide_b,bpide_c,bpide_d;

EQUATIONS OBJ,G1,G2,G3,G4,G5,G6,G7,G8,G9,G10,G11,G12,G13,G14,G15,G16,G17,G18,G19,G20,G21,G22,G23,G24,G25,G26,G27,G28,G29,G30,G31,G32,G33, G34, G35, G36, G37, G38, G39, G40,G41, G42, G43, G44, G45, G46, G47,
G48, G49, G50,G51,G52,G53,G54,G55,G56,G57,G58,G59,G60,G61,G62,G63,G64,G65,G66,G67,G68,G69,G70,G71,G72,G73,G74,G75,G76,G77,G78,G79,G80,G81,G82,G83,G84,G85,G86,G87,G88,G89,G90;
OBJ..Z =E= -47*(xa1 + xa2 + xa3) -49*(xb1 + xb2 + xb3) - 53*(xc1 + xc2 + xc3) - 51*(xd1 + xd2 + xd3)
-0.4*xa1 -0.3*xa2 -0.3*xa3 -0.4*xb1 -0.4*xb2 -0.4*xb3 -0.2*xc1 -0.5*xc2 -0.4*xc3 -0.4*xd1 -0.3*xd2 -0.2*xd3
-0.021*(72*xa1 + 80*xb1 + 69*xc1 + 80*xd1) -0.011*(72*xa2 + 80*xb2 + 69*xc2 + 80*xd2)
-0.013*(72*xa3 + 80*xb3 + 69*xc3 + 80*xd3)-0.015*(35*xa1 + 37*xb1 + 50*xc1 + 20*xd1)
-0.062*(35*xa2 + 37*xb2 + 50*xc2 + 20*xd2)-0.082*(35*xa3 + 37*xb3 + 50*xc3 + 20*xd3)
-0.01*(10*xa1 + 12*xb1 + 8*xc1 + 15*xd1)-0.033*(10*xa2 + 12*xb2 + 8*xc2 + 15*xd2)
-0.041*(10*xa3 + 12*xb3 + 8*xc3 + 15*xd3)
+0.5*(g1e + g2e + g3e) +0.45*(g1p + g2p + g3p)+0.6*(g1f + g2f + g3f)+0.55*(g1n + g2n + g3n)
+0.45*(o1e + o2e + o3e)+0.55*(o1p + o2p + o3p )+0.45*(o1f + o2f + o3f)+0.35*(o1n + o2n + o3n)
+0.15*(q1e + q2e + q3e)+0.1*(q1p + q2p + q3p) +0.15*(q1f + q2f + q3f) + 0.12*(q1n + q2n + q3n)
-500000*br1-700000*br2-750000*br3-p1*100000;
* impongo que se compran 100K de cada suministrador
G1.. xa1 + xa2 + xa3 =G= 100000*bpide_a;
G2.. xb1 + xb2 + xb3 =G= 100000*bpide_b;
G3.. xc1 + xc2 + xc3 =G= 100000*bpide_c;
G4.. xd1 + xd2 + xd3 =G= 100000*bpide_d;
*impongo el limite por suministrador
G5.. xa1 + xa2 + xa3 =L= 500000*bpide_a;
G6.. xb1 + xb2 + xb3 =L= 500000*bpide_b;
G7.. xc1 + xc2 + xc3 =L= 500000*bpide_c;
G8.. xd1 + xd2 + xd3 =L= 500000*bpide_d;
*lo que producimos en cada refineria de de gasolina es menor o igual que lo que enviamos de ese producto en cada refineria a los paises
G9.. 72*xa1 + 80*xb1 + 69*xc1 + 80*xd1 =G= g1e + g1p + g1f + g1n;
G10.. 72*xa2 + 80*xb2 + 69*xc2 + 80*xd2 =G= g2e + g2p + g2f + g2n;
G11.. 72*xa3 + 80*xb3 + 69*xc3 + 80*xd3 =G= g3e + g3p + g3f + g3n;
*lo que producimos en cada refineria de de gasoil es menor o igual que lo que enviamos de ese producto en cada refineria a los paises
G12.. 35*xa1 + 37*xb1 + 50*xc1 + 20*xd1 =G= o1e + o1p + o1f + o1n;
G13.. 35*xa2 + 37*xb2 + 50*xc2 + 20*xd2 =G= o2e + o2p + o2f + o2n;
G14.. 35*xa3 + 37*xb3 + 50*xc3 + 20*xd3 =G= o3e + o3p + o3f + o3n;
*lo que producimos en cada refineria de de queroseno es menor o igual que lo que enviamos de ese producto en cada refineria a los paises
G15.. 10*xa1 + 12*xb1 + 8*xc1 + 15*xd1 =G= q1e + q1p + q1f + q1n;
G16.. 10*xa2 + 12*xb2 + 8*xc2 + 15*xd2 =G= q2e + q2p + q2f + q2n;
G17.. 10*xa3 + 12*xb3 + 8*xc3 + 15*xd3 =G= q3e + q3p + q3f + q3n;
*lo que enviamos es menor o igual a la demanda ya que si es superior no se venderá
G18.. g1e + g2e + g3e =L= 20000000;
G19.. g1p + g2p + g3p =L= 10000000;
G20.. g1f + g2f + g3f =L= 10000000;
G21.. g1n + g2n + g3n =L= 25000000;
*lo que enviamos es menor o igual a la demanda ya que si es superior no se venderá
G22.. o1e + o2e + o3e =L= 15000000;
G23.. o1p + o2p + o3p =L= 6000000;
G24.. o1f + o2f + o3f =L= 8000000;
G25.. o1n + o2n + o3n =L= 10000000;
*lo que enviamos es menor o igual a la demanda ya que si es superior no se venderá
G26.. q1e + q2e + q3e =L= 10000000;
G27.. q1p + q2p + q3p =L= 3000000;
G28.. q1f + q2f + q3f =L= 4000000;
G29.. q1n + q2n + q3n =L= 12000000;
*Impongo que se usen dos refinerias y que lo que recibe cada refineria está ligado a un valor muy alto (En este caso el maximo que puede comprar a los 4 suministradores),
* en la función objetivo ya se contempla la resta por activar la refineria del punto 4 de la parte 2
G30.. br1+br2+br3=L=2;
G31.. xa1+xb1+xc1+xd1=L=2000000*br1;
G32.. xa2+xb2+xc2+xd2=L=2000000*br2;
G33.. xa3+xb3+xc3+xd3=L=2000000*br3;
*Añadimos que las refinerias abiertas atiendan a los mercados
G34.. 2*br1=L= bm1e +bm1p+bm1f+bm1n;
G35..  bm1e +bm1p+bm1f+bm1n =L= 3*br1;
G36.. 2*br2=L= bm2e +bm2p+bm2f+bm2n;
G37..  bm2e +bm2p+bm2f+bm2n =L= 3*br2;
G38.. 2*br3=L= bm3e +bm3p+bm3f+bm3n;
G39..  bm3e +bm3p+bm3f+bm3n =L= 3*br3;
*primera refineria
g40.. g1e+o1e+q1e=L=20000000000*bm1e;
g41.. g1p+o1p+q1p=L=20000000000*bm1p;
g42.. g1f+o1f+q1f=L=20000000000*bm1f;
g43.. g1n+o1n+q1n=L=20000000000*bm1n;
*para la segunda
G44.. g2e+o2e+q2e =L= 20000000000*bm2e;
G45.. g2p+o2p+q2p =L= 20000000000*bm2p;
G46.. g2f+o2f+q2f =L= 20000000000*bm2f;
G47.. g2n+o2n+q2n =L= 20000000000*bm2n;
*para la tercera
G48.. g3e+o3e+q3e =L= 20000000000*bm3e;
G49.. g3p+o3p+q3p =L= 20000000000*bm3p;
G50.. g3f+o3f+q3f =L= 20000000000*bm3f;
G51.. g3n+o3n+q3n =L= 20000000000*bm3n;
* de manera similar a la restriccion de los mercados vamos a hacer lo mismo con que cada refineria deba comprar a un minimo de 2 y un maximo de tres suministradores
G52.. 2*br1=L= bsa1 +bsb1+bsc1+bsd1;
G53..  bsa1 +bsb1+bsc1+bsd1 =L= 3*br1;
G54.. 2*br2=L= bsa2 +bsb2+bsc2+bsd2;
G55..  bsa2 +bsb2+bsc2+bsd2 =L= 3*br2;
G56.. 2*br3=L= bsa3 +bsb3+bsc3+bsd3;
G57..  bsa3 +bsb3+bsc3+bsd3 =L= 3*br3;
*Vamos con lo que recibe la primera refineria Además elegir 500000 no es al azar ya que es lo maximo que puede suministrar un proveedor
G58.. xa1 =L= 500000*bsa1;
G59.. xb1 =L= 500000*bsb1;
G60.. xc1 =L= 500000*bsc1;
G61.. xd1 =L= 500000*bsd1;
*LA DOS
G62.. xa2 =L= 500000*bsa2;
G63.. xb2 =L= 500000*bsb2;
G64.. xc2 =L= 500000*bsc2;
G65.. xd2 =L= 500000*bsd2;
*LA TRES
G66.. xa3 =L= 500000*bsa3;
G67.. xb3 =L= 500000*bsb3;
G68.. xc3 =L= 500000*bsc3;
G69.. xd3 =L= 500000*bsd3;
*Vamos a modelizar la penalizacion de la refineria 1 a portugal si envia los 3 productos
*Con la primera usando la variable binaria que nos daba si de la refineria 1 se enviaba a portugal hacemos que tres variables ligadas a los productors sean mayores o iguales a bm1p porque asi al menos se enviará algun producto
G70.. bm1p=L=bo+bq+bg;
*Para ver la penalizcion hacemos que p1 sea igual a dividir entre 3 la suma de las variables binarias ligadas a los productos solo será 1 si se envian los 3
G71..(bo + bq + bg)=L= 2+p1 ;
G88.. bo=L=bm1p;
G89.. bg=L=bm1p;
G90.. bq=L=bm1p;
* Con estas ya nos seguramos que las variables lineales se condicionen por el resultado de las binarias
G72.. g1p =L= 100000000*bg;
G73.. o1p =L= 60000000*bo;
G74.. q1p =L= 30000000*bq;
*Vamos a añadir las condiciones binarias de que no es necesario comprar a los suministradores un minimo
G75.. bsa1+bsa2+bsa3=L= 3*bpide_a;
G76.. bsb1+bsb2+bsb3=L= 3*bpide_b;
G77.. bsc1+bsc2+bsc3=L= 3*bpide_c;
G78.. bsd1+bsd2+bsd3=L= 3*bpide_d;
*Vamos con la restriccion de que los suministradores seleccionados deben de estar entre un 20% y 60% de la compra total
G79.. total_comprado =E= xa1+xa2+xa3+xb1+xb2+xb3+xc1+xc2+xc3+xd1+xd2+xd3;
G80.. total_comprado*0.2 - (1-bpide_a)*20000000 =L= xa1+xa2+xa3;
G81.. xa1+xa2+xa3 =L=total_comprado*0.6 + (1-bpide_a)*2000000;
G82.. total_comprado*0.2 - (1-bpide_b)*20000000 =L= xb1+xb2+xb3;
G83.. xb1+xb2+xb3 =L=total_comprado*0.6 + (1-bpide_b)*2000000;
G84.. total_comprado*0.2 - (1-bpide_c)*20000000 =L= xc1+xc2+xc3;
G85.. xc1+xc2+xc3 =L=total_comprado*0.6 + (1-bpide_c)*2000000;
G86.. total_comprado*0.2 - (1-bpide_d)*20000000 =L= xd1+xd2+xd3;
G87.. xd1+xd2+xd3 =L=total_comprado*0.6 + (1-bpide_d)*2000000;
MODEL lego /ALL/;
SOLVE lego USING MIP MAXIMIZING Z;