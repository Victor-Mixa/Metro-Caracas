program MetroC;
uses crt;
var
Bol,A,B,C,D,E,F,G,H,I,J,nom,ape: string;
CI, boletos,tipos: integer;
//INICIO DEL CODIGO//

BEGIN
///asignacion de variables///
A:='1= boleto simple amarillo, un viaje en metro';
B:=('2= boleto integrado amarillo, un viaje en metro, un viaje en microbus');
C:=('3= ida y vuelta, boleto amarillo, dos viajes en metro');
D:=('4=ida y vuelta, boleto amarillo, 2 viajes en metro, 2 viajes en microbus');
E:=('5=multiabono boleto naranja, 10 viajes en metro');
F:=('6=MultiAbono integrado, boleto naranja, 10 viajes en metro, 10 viajes en microbus');
G:=('7=Estudiantil simple, boleto nazul, 10 viajes en metro');
H:=('8=Estudiantil integrado, boleto azul, 10 viajes en metro, 20 viajes en microbus');
I:=('9=MetroTarjetas, boleto rojo, 20 viajes, 30 viajes, 40 viajes');
J:=('10=MetroTarjeta integrada, boleto rojo, 20 viajes (metro y microbus), 30 viajes (metro y microbus, 40 viajes (metro y microbus9');
///comienzo del programa////
writeln ('Bienvenido al Metro Caracas, desea comprar boletos?');
readLN(Bol);
if (Bol='si') then
//AGREGAMOS UN CONDICIONAL//
	Begin
	writeln ('porfavor digite su nombre');
	readln (nom);
	writeln ('Digite su apellido');
	readln (ape);
	writeln ('Digite su numero de cedula');
	readln (CI);
	//LE PEDIMOS AL USUARIO QUE INGRESE SUS DATOS//
clrscr;
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
	end
///En caso de que el usuario NO quiera comprar el boleto///
Else
Begin
WriteLn('que tenga buen dia');
End

END.
