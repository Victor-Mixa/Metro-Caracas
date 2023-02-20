program MetroC;
uses crt;
var
a,nom, ape: string;
CI, boletos: integer;
tipos:char;
//INICIO DEL CODIGO//

BEGIN
writeln ('Bienvenido al Metro Caracas, desea comprar boletos?');
readLN(a);
if (a='si') then
//GREGAMOS UN CONDICIONAL PRINCIPALMENTE//
	Begin
	writeln ('porfavor digite su nombre');
	readln (nom);
	writeln ('Digite su apellido');
	readln (ape);
	writeln ('Digite su numero de cedula');
	readln (CI);
	//LE PEDIMOS AL USUARIO QUE INGRESE SUS DATOS//
	
writeln ('Elija el tipo de boleto que desea comprar desde la A hasta la J');

readln (tipos);
 Case tipos of
 'A' : writeln('boleto simple amarillo, un viaje en metro');
 'B': writeln ('boleto integrado amarillo, un viaje en metro, un viaje en microbus');
 'C': writeln ('ida y vuelta, boleto amarillo, dos viajes en metro');
 'D' : writeln ('ida y vuelta, boleto amarillo, 2 viajes en metro, 2 viajes en microbus');
 'E': writeln ('multiabono boleto naranja, 10 viajes en metro');
 'F':  writeln ('MultiAbono integrado, boleto naranja, 10 viajes en metro, 10 viajes en microbus');
 'G': writeln ('Estudiantil simple, boleto nazul, 10 viajes en metro');
 'H': writeln ('Estudiantil integrado, boleto azul, 10 viajes en metro, 20 viajes en microbus');
 'I': writeln ('MetroTarjetas, boleto rojo, 20 viajes, 30 viajesw, 40 viajes');
 'J': writeln ('MetroTarjeta integrada, boleto rojo, 20 viajes (metro y microbus), 30 viajes (metro y microbus, 40 viajes (metro y microbus9');
 End;
End
Else
Begin
WriteLn('que tenga buen dia');
End
END.

