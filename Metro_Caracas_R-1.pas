program MetroC;
uses crt;
var
Bol,nom,ape,rep,EstSal,EstDest: string;
CI,A,B,C,D,E,F,G,H,I,J,tipos,Num,Viajes,line,buc,totalv,VA,VC,VE,P,M,Gr: integer;
//INICIO DEL CODIGO//

BEGIN
///asignacion de precios///
A:=5;
B:=10;
C:=15;
D:=20;
E:=25;
F:=30;
G:=35;
H:=40;
I:=45;
J:=50;
///asignacion de viajes////
VA:=1;
VC:=2;
VE:=10;
P:=20;
M:=30;
Gr:=40;
totalv:=0;


		///comienzo del programa////
writeln ('Bienvenido al Metro Caracas, desea comprar boletos?');
readLn(rep);
if (rep='si') then
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
writeln ('1= boleto simple amarillo, un viaje en metro');
writeln ('2= boleto integrado amarillo, un viaje en metro, un viaje en metrobus');
writeln ('3= ida y vuelta, boleto amarillo, dos viajes en metro');
writeln('4=ida y vuelta integrado, boleto amarillo, 2 viajes en metro, 2 viajes en metrobus');
writeln('5=multiabono boleto naranja, 10 viajes en metro');
writeln('6=MultiAbono integrado, boleto naranja, 10 viajes en metro, 10 viajes en metrobus');
writeln('7=Estudiantil simple, boleto nazul, 10 viajes en metro');
writeln ('8=Estudiantil integrado, boleto azul, 10 viajes en metro, 20 viajes en metrobus');
writeln('9=MetroTarjetas, boleto rojo, 20 viajes, 30 viajes, 40 viajes');
writeln('10=MetroTarjeta integrado, boleto rojo, 20 viajes (metro y metrobus), 30 viajes (metro y mitrobus), 40 viajes (metro y metrobus)');
	Readln(tipos);
clrscr;

////se muestra la eleccion////
case tipos of
		1: writeln('Usted a elegido el boleto: simple');
		2: writeln ('Usted a elegido el boleto: integrado');
		3: writeln('Usted a elegido el boleto: ida y vuelva ');
		4: writeln('Usted a elegido el boleto: ida y vuelta integrado');
		5: writeln('Usted a elegido el boleto: multiabono');
		6: writeln('Usted a elegido el boleto: multiabono integrado');
		7: writeln('Usted a elegido el boleto: estudiantil simple');
		8: writeln('Usted a elegido el boleto: estudiantil integrado');
		9: writeln('Usted a elegido el boleto: metrotarjeta');
		10: writeln('Usted a elegido el boleto: metrotarjeta integrado');
		end;
////se define los precios////
	case tipos of
		1: writeln('El precio de este boleto es ',A );
		2: writeln ('El precio de ste boleto es ',B);
		3: writeln('El precio de este boleto es ',C);
		4: writeln('El precio de este boleto es ',D);
		5: writeln('El precio de este boleto es ',E);
		6: writeln('El precio de este boleto es ',F);
		7: writeln('El precio de este boleto es ',G);
		8: writeln('El precio de este boleto es ',H);
		9: writeln('El precio de este boleto es ',I);
		10: writeln('El precio de este boleto es ',J);
		end;

/////Se pregunta la cantidad de boletos////
WriteLn('Digite la cantidad de boletos a comprar');
readln(Num);

///Muestra de los viajes del boleto////
	case tipos of
1:writeln ('Usted tiene ',VA*num,' viajes en metro');
3:writeln ('Usted tiene ',VC*num,' viajes en metro');
5:writeln ('Usted tiene ',VE*num,' viajes en metro');
7:writeln ('Usted tiene ',VE*num,' viajes en metro');
8:writeln ('Usted tiene 10 viajes en metro, 20 viajes en microbus');
	end;

		if tipos=2 then
		begin
		Writeln('Usted tiene ',VA*Num,' viajes en metro');
		writeln('En que transporte realizara el viaje, en metro o metrobus?');
		readln(bol);
		end;
		
		if tipos=4 then 
		begin
		Writeln('Usted tiene ',VC*Num,' viajes en metro');
		writeln('En que transporte realizara el viaje, en metro o metrobus?');
		readln(bol);
		end;
		
		if tipos=6 then
		begin
		writeln ('Usted tiene ',VE*num,' viajes en metro');
		writeln('En que transporte realizara el viaje, en metro o metrobus?');
		readln(bol);
		end;
		
		if tipos=8 then
		begin
		writeln('En que transporte realizara el viaje, en metro o metrobus?');
		readln(bol);
			if bol='metro' then
			begin
			writeln ('Usted tiene ',VE*num,' viajes en metro');
			end
			else writeln ('Usted tiene ',P*num,' viajes en metrobus');
		end;
		
		if tipos=(9) then
			begin
				for buc:=1 to num do
					begin
					WriteLn('Para su boleto ',buc,' cuantos viajes desea?');
					WriteLn('1: 20 viajes, 2: 30 viajes, 3: 40 viajes');
					readLn(viajes);
						case viajes of
							1: Totalv:=Totalv+P;
							2: Totalv:=Totalv+M;
							3: Totalv:=Totalv+Gr;
						end;
					while viajes>3 do
						begin
						writeln('Numero de viajes invalido');
						WriteLn('Para su boleto ',buc,' cuantos viajes desea?');
						WriteLn('1: 20 viajes, 2: 30 viajes, 3: 40 viajes');
						readLn(viajes);
							case viajes of
								1: Totalv:=Totalv+P;
								2: Totalv:=Totalv+M;
								3: Totalv:=Totalv+Gr;
							end;
						clrscr;
						end;

					WriteLn('Tiene ',totalv,' viajes en total');
					readln();
					clrscr;
					end;
				end;
		
		if tipos=(10) then
			begin
				for buc:=1 to num do
					begin
					WriteLn('Para su boleto ',buc,' cuantos viajes desea?');
					WriteLn('1: 20 viajes, 2: 30 viajes, 3: 40 viajes');
					readLn(viajes);
						case viajes of
							1: Totalv:=Totalv+P;
							2: Totalv:=Totalv+M;
							3: Totalv:=Totalv+Gr;
						end;
					while viajes>3 do
						begin
						writeln('Numero de viajes invalido');
						WriteLn('Para su boleto ',buc,' cuantos viajes desea?');
						WriteLn('1: 20 viajes, 2: 30 viajes, 3: 40 viajes');
						readLn(viajes);
							case viajes of
								1: Totalv:=Totalv+P;
								2: Totalv:=Totalv+M;
								3: Totalv:=Totalv+Gr;
							end;
						clrscr;
						end;

					WriteLn('Tiene ',totalv,' viajes en total');
					readln();
					clrscr;
					end;
		writeln('En que transporte realizara el viaje, en metro o metrobus?');
		readln(bol);
		end;
///confirmacion para continuar///
writeln ('Estas seguro de continuar?');
	readln(Rep);
	clrscr;
	if (Rep='si') then 
		Begin
		
	///se le muestra al usuario lo pedido///
	case tipos of
		1: writeln('El precio de este boleto es ',A*Num,'$');
		2: writeln ('El precio de ste boleto es ',B*Num,'$');
		3: writeln('El precio de este boleto es ',C*Num,'$');
		4: writeln('El precio de este boleto es ',D*Num,'$');
		5: writeln('El precio de este boleto es ',E*Num,'$');
		6: writeln('El precio de este boleto es ',F*Num,'$');
		7: writeln('El precio de este boleto es ',G*Num,'$');
		8: writeln('El precio de este boleto es ',H*Num,'$');
		9: writeln('El precio de este boleto es ',I*Num,'$');
		10: writeln('El precio de este boleto es ',J*Num,'$');
	end;


/////Seleccion de la linea/////
writeln();
WriteLn('Desde la linea 1 hatas la linea 8.En que linea desea viajar?');
Writeln('Digite un numero del 1 al 8');
Readln(Line);
	case Line of
		1:WriteLn('Propatria,Perez Bonalde, Plaza Sucre, Gato Negro, Agua Salud, Caño Amarillo,   Capitolio, La Hoyada, Parque Carabobo, Bellas Artes, Colegio de ing., Plaza     Venezuela, Sabana Grande, Chacaito, Chacao, Altamira, Miranda, Los Dos Caminos, Los Cortijos, La California, Petare, Palo Verde');
		2:WriteLn('El silencio, Capuchinos, Maternidad, Artiguas, La Paz, La yaguara, Carapita,    Antimano, Mamera, Caricuao, Zoologico, Ruiz Pineda/Las juntas');
		3:WriteLn('Plaza Venezuela, Ciudad Universitaria, Los símbolos, La bandera, El Valle, Los jardines, Coche ,Mercado, La Rinconada');
		4:WriteLn('Zona rental, Parque Central, Nuevo Circo, Teatro, Capuchinos, Maternidad, Artigas, La Paz, La Yaragua, Carapita, Antimano, Mamera, Ruiz Pineda/Las Adjuntas');
		5:WriteLn('Bello Monte, Las Mercedes, Parque Simón Bolívar, Bello Campo, Hugo Chávez, Monte Cristo, Boleita, El Marquez, Warairarepano');
		6:WriteLn('Zoologico,La Riconada');
		7:WriteLn('Las flores, Panteón, Socorro, La Hoyada, El Cristo, Roca torpeya, Presidente Medina, INCES, Roosevelt, La Bandera, Los Ilustres');
		8:WriteLn('Petare 2, 19 de abril, 5 de julio, 24 de julio, Warairarepano')
		else 
			writeln('esa no es una linea valida');
		end
	end;

	for buc:=1 to num do
		begin
			WriteLn('Para su boleto ',buc);
			Writeln('ingrese el nombre de la estacion de salida');
			readln(EstSal);
			Writeln('ingrese el nombre de la estacion de destino');
			readln(EstDest);
end

End

//////En caso de que la persona NO quiera comprar un boleto///////
Else
WriteLn('que tenga buen dia');

END.
