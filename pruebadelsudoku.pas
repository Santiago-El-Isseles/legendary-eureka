
program unsudoku;

uses crt;

var 
	matriz: array[1..9,1..9] of integer;
	fila, columna: integer;
	i: integer;

	procedure mostrar_matriz;
	var numero: integer;
		repiteFila: boolean;
		begin
			repeat
			clrscr;
			numero:= random(10);
			randomize; //para generar numeros aleatorios
			
			for fila:= 1 to 9 do
			begin
				for columna:= 1 to 9 do
				begin
					matriz[fila,columna] := random(10); //para generar numeros aleatorios entre 0 y 9
					For i:= 1 to 9 do

					begin
						if (matriz[i, columna] = numero) then

						repiteFila := true

						else 
						repiteFila := false;
					end
				end;
			end;
			
			// Para mostrar el sudoku en orden
			for fila:= 1 to 9 do
			begin
				for columna := 1 to 9 do
				begin
					write(matriz[fila, columna]:3); // Alinea los números
				end;
			writeln; // Salto de línea para la siguiente fila
			end;
			
			until(matriz[1,1] <> matriz[2,1]) and (matriz[2,1] <> matriz[3,1]) and (matriz[3,1] <> matriz[4,1]) and (matriz[4,1] <> matriz[5,1]) and 
			(matriz[5,1] <> matriz[6,1]) and (matriz[6,1] <> matriz[7,1]) and (matriz[7,1] <> matriz[8,1]) and (matriz[8,1] <> matriz[9,1]);
		
		end; 
		
	

BEGIN
	
	clrscr;
	writeln('Resuelva el siguiente sudoku');
	mostrar_matriz;
	
END.

