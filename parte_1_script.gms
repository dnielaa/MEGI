VARIABLE Z;
POSITIVE VARIABLE xa1,xa2,xa3,xb1,xb2,xb3,xc1,xc2,xc3,xd1,xd2,xd3,g1e,g2e,g3e,g1p,g2p,g3p,g1f,g2f,g3f,g1n,g2n,g3n,o1e,o2e,o3e,o1p,o2p,o3p,o1f,o2f,o3f,o1n,o2n,o3n,q1e,q2e,q3e,q1p,q2p,q3p,q1f,q2f,q3f,q1n,q2n,q3n,ganancias,gastos;

EQUATIONS OBJ,G1,G2,G3,G4,G5,G6,G7,G8,G9,G10,G11,G12,G13,G14,G15,G16,G17,G18,G19,G20,G21,G22,G23,G24,G25,G26,G27,G28,G29,G30,G31;
OBJ..Z =E= -gastos +ganancias;
* impongo que se compran 100K de cada suministrador
G1.. xa1 + xa2 + xa3 =G= 100000;
G2.. xb1 + xb2 + xb3 =G= 100000;
G3.. xc1 + xc2 + xc3 =G= 100000;
G4.. xd1 + xd2 + xd3 =G= 100000;
*impongo el limite por suministrador
G5.. xa1 + xa2 + xa3 =L= 500000;
G6.. xb1 + xb2 + xb3 =L= 500000;
G7.. xc1 + xc2 + xc3 =L= 500000;
G8.. xd1 + xd2 + xd3 =L= 500000;
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

G30.. ganancias =E= +0.5*(g1e + g2e + g3e) +0.45*(g1p + g2p + g3p)+0.6*(g1f + g2f + g3f)+0.55*(g1n + g2n + g3n) +0.45*(o1e + o2e + o3e)+0.55*(o1p + o2p + o3p )+0.45*(o1f + o2f + o3f)+0.35*(o1n + o2n + o3n) +0.15*(q1e + q2e + q3e)+0.1*(q1p + q2p + q3p) +0.15*(q1f + q2f + q3f) + 0.12*(q1n + q2n + q3n);
G31.. gastos =E= -1*(-47*(xa1 + xa2 + xa3) -49*(xb1 + xb2 + xb3) - 53*(xc1 + xc2 + xc3) - 51*(xd1 + xd2 + xd3)
-0.4*xa1 -0.3*xa2 -0.3*xa3 -0.4*xb1 -0.4*xb2 -0.4*xb3 -0.2*xc1 -0.5*xc2 -0.4*xc3 -0.4*xd1 -0.3*xd2 -0.2*xd3
-0.021*(72*xa1 + 80*xb1 + 69*xc1 + 80*xd1) -0.011*(72*xa2 + 80*xb2 + 69*xc2 + 80*xd2)
-0.013*(72*xa3 + 80*xb3 + 69*xc3 + 80*xd3)-0.015*(35*xa1 + 37*xb1 + 50*xc1 + 20*xd1)
-0.062*(35*xa2 + 37*xb2 + 50*xc2 + 20*xd2)-0.082*(35*xa3 + 37*xb3 + 50*xc3 + 20*xd3)
-0.01*(10*xa1 + 12*xb1 + 8*xc1 + 15*xd1)-0.033*(10*xa2 + 12*xb2 + 8*xc2 + 15*xd2)
-0.041*(10*xa3 + 12*xb3 + 8*xc3 + 15*xd3))
MODEL lego /ALL/;
SOLVE lego USING LP MAXIMIZING Z;