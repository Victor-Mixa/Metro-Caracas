program MetroC;
uses crt;
var
Bol,A,B,C,D,E,F,G,H,I,J,nom,ape,Rep: string;
CI, boletos,tipos,Num,Viajes: integer;
//INICIO DEL CODIGO//

BEGIN
///asignacion de variables///
A:='1= boleto simple amarillo, un viaje en metro';
B:=('2= boleto integrado amarillo, un viaje en metro, un viaje en microbus');
C:=('3= ida y vuelta, boleto amarillo, dos viajes en metro');
D:=('4= ida y vuelta, boleto amarillo, 2 viajes en metro, 2 viajes en microbus');
E:=('5= multiabono boleto naranja, 10 viajes en metro');
F:=('6= MultiAbono integrado, boleto naranja, 10 viajes en metro, 10 viajes en microbus');
G:=('7= Estudiantil simple, boleto nazul, 10 viajes en metro');
H:=('8= Estudiantil integrado, boleto azul, 10 viajes en metro, 20 viajes en microbus');
I:=('9= MetroTarjetas, boleto rojo, 20 viajes, 30 viajes, 40 viajes');
J:=('10= MetroTarjeta integrada, boleto rojo, 20 viajes (metro y microbus), 30 viajes (metro y microbus, 40 viajes (metro y microbus9');

		///comienzo del programa////
writeln ('Bienvenido al Metro Caracas, desea comprar boletos?');
readLn(Bol);
if (Bol='si') then
	Begin
		writeln ('porfavor digite su nombre');
		readln (nom);
		writeln ('Digite su apellido');
		readln (ape);
		writeln ('Digite su numero de cedula');
		readln (CI);
	clrscr;

////Se enlista los tipos de boletos que hay/////
writeln ('Elija el tipo de boleto que desea comprar');
writeln();
writeln(A);
writeln(B);
writeln(C);
writeln(D);
writeln(E);
writeln(F);
writeln(G);
writeln(H);
writeln(I);
writeln(J);
	Readln(tipos);
clrscr;

////se define los precios////
writeln ('Usted a elegido el boleto: ',tipos);
	case tipos of
		1: writeln('El precio de este boleto es 5$');
		2: writeln ('El precio de ste boleto es 10$');
		3: writeln('El precio de este boleto es 15$');
		4: writeln('El precio de este boleto es 20$');
		5: writeln('El precio de este boleto es 25$');
		6: writeln('El precio de este boleto es 30$');
		7: writeln('El precio de este boleto es 35$');
		8: writeln('El precio de este boleto es 40$');
		9: writeln('El precio de este boleto es 45$');
		10: writeln('El precio de este boleto es 50$');
		end;
///Muestra de los viajes del boleto////
	case tipos of
1: writeln ('usted tiene un viaje en metro');
2: writeln('Usted tiene un viaje en metro y un viaje en microbus');
3:writeln ('Usted tiene dos viajes en metro');
4:writeln ('usted tiene 2 viajes en metro y 2 viajes en microbus');
5:writeln ('usted tiene 10 viajes en metro');
6:writeln ('usted tiene 10 viajes en metro y 10 viajes en microbus');
7:writeln ('usted tiene 10 viajes en metro');
8:writeln ('usted tiene 10 viajes en metro y 20 viajes en microbus');
	end;
		if tipos=(9) then
			begin
			WriteLn('cuantos viajes desea?');
			WriteLn('1: 20 viajes, 2: 30 viajes, 3:40 viajes');
			readLn(viajes);
				case viajes of
					1: writeln('usted tiene 20 viajes en metro');
					2: writeln('usted tiene 30 viajes en metro');
					3: writeln('usted tiene 40 viajes en metro')
			end;
		end;
		
		if tipos=(10) then
			begin
			WriteLn('cuantos viajes desea?');
			WriteLn('1: 20 viajes, 2: 30 viajes, 3:40 viajes');
			readLn(viajes);
				case viajes of
					1: writeln('usted tiene 20 viajes en metro y microbus');
					2: writeln('usted tiene 30 viajes en metro y microbus');
					3: writeln('usted tiene 40 viajes en metro y microbus')
				end;
		end;
		
///confirmacion para continuar///
writeln ('Estas seguro de continuar?');
	readln(Rep);
	if (Rep='si') then 
		Begin
			WriteLn('Digite la cantidad de boletos a comprar');
			readln(Num)
		end;
		
	///se le muestra al usuario lo pedido///
	case tipos of
		1: writeln('El precio de este boleto es ',5*Num,'$');
		2: writeln ('El precio de ste boleto es ',10*Num,'$');
		3: writeln('El precio de este boleto es ',15*Num,'$');
		4: writeln('El precio de este boleto es ',20*Num,'$');
		5: writeln('El precio de este boleto es ',25*Num,'$');
		6: writeln('El precio de este boleto es ',30*Num,'$');
		7: writeln('El precio de este boleto es ',35*Num,'$');
		8: writeln('El precio de este boleto es ',5*Num,'$');
		9: writeln('El precio de este boleto es ',45*Num,'$');
		10: writeln('El precio de este boleto es ',50*Num,'$');
	end;

end

///En caso de que el usuario NO quiera comprar el boleto///
Else
Begin
WriteLn('que tenga buen dia');
End

END.
