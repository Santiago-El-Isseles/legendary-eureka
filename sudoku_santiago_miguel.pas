
program unsudoku;

uses crt;

var 
	matriz, respaldo: array[1..9,1..9] of integer;
	auxiliar:integer;
	fila, columna: integer;
	i: integer;
	nombre: string;
	cedula: integer;
	var opc_ingreborrar:char;
	camfila,camcolum,camposi: integer;
	
	
	procedure sudoku1;
	begin
	matriz[1,1]:= 5;
	matriz[1,2]:= 3;
	matriz[1,3]:= 0;
	matriz[1,4]:= 6;
	matriz[1,5]:= 7;
	matriz[1,6]:= 8;
	matriz[1,7]:= 0;
	matriz[1,8]:= 1;
	matriz[1,9]:= 2;
	
	matriz[2,1]:= 6;
	matriz[2,2]:= 7;
	matriz[2,3]:= 0;
	matriz[2,4]:= 1;
	matriz[2,5]:= 9;
	matriz[2,6]:= 0;
	matriz[2,7]:= 3;
	matriz[2,8]:= 4;
	matriz[2,9]:= 8;
	
	matriz[3,1]:= 1;
	matriz[3,2]:= 9;
	matriz[3,3]:= 8;
	matriz[3,4]:= 3;
	matriz[3,5]:= 4;
	matriz[3,6]:= 0;
	matriz[3,7]:= 5;
	matriz[3,8]:= 6;
	matriz[3,9]:= 7;
	
	matriz[4,1]:= 8;
	matriz[4,2]:= 5;
	matriz[4,3]:= 0;
	matriz[4,4]:= 7;
	matriz[4,5]:= 0;
	matriz[4,6]:= 0;
	matriz[4,7]:= 4;
	matriz[4,8]:= 0;
	matriz[4,9]:= 3;
	
	matriz[5,1]:= 4;
	matriz[5,2]:= 2;
	matriz[5,3]:= 0;
	matriz[5,4]:= 0;
	matriz[5,5]:= 0;
	matriz[5,6]:= 3;
	matriz[5,7]:= 7;
	matriz[5,8]:= 9;
	matriz[5,9]:= 1;
	
	matriz[6,1]:= 7;
	matriz[6,2]:= 1;
	matriz[6,3]:= 3;
	matriz[6,4]:= 9;
	matriz[6,5]:= 2;
	matriz[6,6]:= 4;
	matriz[6,7]:= 8;
	matriz[6,8]:= 5;
	matriz[6,9]:= 6;
	
	matriz[7,1]:= 9;
	matriz[7,2]:= 6;
	matriz[7,3]:= 1;
	matriz[7,4]:= 5;
	matriz[7,5]:= 3;
	matriz[7,6]:= 7;
	matriz[7,7]:= 2;
	matriz[7,8]:= 8;
	matriz[7,9]:= 4;
	
	matriz[8,1]:= 2;
	matriz[8,2]:= 0;
	matriz[8,3]:= 0;
	matriz[8,4]:= 4;
	matriz[8,5]:= 0;
	matriz[8,6]:= 0;
	matriz[8,7]:= 0;
	matriz[8,8]:= 3;
	matriz[8,9]:= 5;
	
	matriz[9,1]:= 3;
	matriz[9,2]:= 0;
	matriz[9,3]:= 5;
	matriz[9,4]:= 2;
	matriz[9,5]:= 0;
	matriz[9,6]:= 0;
	matriz[9,7]:= 1;
	matriz[9,8]:= 7;
	matriz[9,9]:= 9;
	
	end;

	procedure sudoku2;
	begin
	matriz[1,1]:= 0;
	matriz[1,2]:= 0;
	matriz[1,3]:= 0;
	matriz[1,4]:= 0;
	matriz[1,5]:= 0;
	matriz[1,6]:= 0;
	matriz[1,7]:= 3;
	matriz[1,8]:= 0;
	matriz[1,9]:= 0;
	
	matriz[2,1]:= 3;
	matriz[2,2]:= 0;
	matriz[2,3]:= 0;
	matriz[2,4]:= 0;
	matriz[2,5]:= 2;
	matriz[2,6]:= 0;
	matriz[2,7]:= 0;
	matriz[2,8]:= 0;
	matriz[2,9]:= 0;
	
	matriz[3,1]:= 4;
	matriz[3,2]:= 0;
	matriz[3,3]:= 0;
	matriz[3,4]:= 0;
	matriz[3,5]:= 0;
	matriz[3,6]:= 0;
	matriz[3,7]:= 7;
	matriz[3,8]:= 0;
	matriz[3,9]:= 1;
	
	matriz[4,1]:= 0;
	matriz[4,2]:= 0;
	matriz[4,3]:= 0;
	matriz[4,4]:= 3;
	matriz[4,5]:= 0;
	matriz[4,6]:= 0;
	matriz[4,7]:= 8;
	matriz[4,8]:= 0;
	matriz[4,9]:= 0;
	
	matriz[5,1]:= 7;
	matriz[5,2]:= 0;
	matriz[5,3]:= 0;
	matriz[5,4]:= 0;
	matriz[5,5]:= 0;
	matriz[5,6]:= 0;
	matriz[5,7]:= 0;
	matriz[5,8]:= 6;
	matriz[5,9]:= 0;
	
	matriz[6,1]:= 0;
	matriz[6,2]:= 0;
	matriz[6,3]:= 3;
	matriz[6,4]:= 0;
	matriz[6,5]:= 0;
	matriz[6,6]:= 7;
	matriz[6,7]:= 0;
	matriz[6,8]:= 0;
	matriz[6,9]:= 0;
	
	matriz[7,1]:= 0;
	matriz[7,2]:= 0;
	matriz[7,3]:= 0;
	matriz[7,4]:= 0;
	matriz[7,5]:= 0;
	matriz[7,6]:= 0;
	matriz[7,7]:= 0;
	matriz[7,8]:= 7;
	matriz[7,9]:= 0;
	
	matriz[8,1]:= 0;
	matriz[8,2]:= 0;
	matriz[8,3]:= 0;
	matriz[8,4]:= 2;
	matriz[8,5]:= 0;
	matriz[8,6]:= 0;
	matriz[8,7]:= 0;
	matriz[8,8]:= 1;
	matriz[8,9]:= 0;
	
	matriz[9,1]:= 0;
	matriz[9,2]:= 0;
	matriz[9,3]:= 5;
	matriz[9,4]:= 0;
	matriz[9,5]:= 7;
	matriz[9,6]:= 0;
	matriz[9,7]:= 0;
	matriz[9,8]:= 0;
	matriz[9,9]:= 0;
	
end;

	procedure sudoku3;
	begin
	matriz[1,1]:= 0;
	matriz[1,2]:= 0;
	matriz[1,3]:= 0;
	matriz[1,4]:= 0;
	matriz[1,5]:= 0;
	matriz[1,6]:= 1;
	matriz[1,7]:= 9;
	matriz[1,8]:= 0;
	matriz[1,9]:= 0;
	
	matriz[2,1]:= 2;
	matriz[2,2]:= 0;
	matriz[2,3]:= 1;
	matriz[2,4]:= 0;
	matriz[2,5]:= 0;
	matriz[2,6]:= 0;
	matriz[2,7]:= 0;
	matriz[2,8]:= 0;
	matriz[2,9]:= 0;
	
	matriz[3,1]:= 0;
	matriz[3,2]:= 0;
	matriz[3,3]:= 0;
	matriz[3,4]:= 0;
	matriz[3,5]:= 0;
	matriz[3,6]:= 0;
	matriz[3,7]:= 1;
	matriz[3,8]:= 0;
	matriz[3,9]:= 0;
	
	matriz[4,1]:= 1;
	matriz[4,2]:= 0;
	matriz[4,3]:= 0;
	matriz[4,4]:= 0;
	matriz[4,5]:= 0;
	matriz[4,6]:= 6;
	matriz[4,7]:= 0;
	matriz[4,8]:= 0;
	matriz[4,9]:= 0;
	
	matriz[5,1]:= 0;
	matriz[5,2]:= 3;
	matriz[5,3]:= 0;
	matriz[5,4]:= 8;
	matriz[5,5]:= 0;
	matriz[5,6]:= 0;
	matriz[5,7]:= 0;
	matriz[5,8]:= 0;
	matriz[5,9]:= 0;
	
	matriz[6,1]:= 0;
	matriz[6,2]:= 0;
	matriz[6,3]:= 0;
	matriz[6,4]:= 0;
	matriz[6,5]:= 0;
	matriz[6,6]:= 5;
	matriz[6,7]:= 0;
	matriz[6,8]:= 0;
	matriz[6,9]:= 0;
	
	matriz[7,1]:= 0;
	matriz[7,2]:= 0;
	matriz[7,3]:= 3;
	matriz[7,4]:= 0;
	matriz[7,5]:= 0;
	matriz[7,6]:= 0;
	matriz[7,7]:= 0;
	matriz[7,8]:= 0;
	matriz[7,9]:= 1;
	
	matriz[8,1]:= 0;
	matriz[8,2]:= 6;
	matriz[8,3]:= 2;
	matriz[8,4]:= 0;
	matriz[8,5]:= 0;
	matriz[8,6]:= 0;
	matriz[8,7]:= 0;
	matriz[8,8]:= 8;
	matriz[8,9]:= 0;
	
	matriz[9,1]:= 8;
	matriz[9,2]:= 0;
	matriz[9,3]:= 0;
	matriz[9,4]:= 9;
	matriz[9,5]:= 0;
	matriz[9,6]:= 0;
	matriz[9,7]:= 0;
	matriz[9,8]:= 0;
	matriz[9,9]:= 0;
	
end;

	procedure sudoku4;
	begin
	matriz[1,1]:= 0;
	matriz[1,2]:= 0;
	matriz[1,3]:= 2;
	matriz[1,4]:= 0;
	matriz[1,5]:= 0;
	matriz[1,6]:= 0;
	matriz[1,7]:= 9;
	matriz[1,8]:= 0;
	matriz[1,9]:= 0;
	
	matriz[2,1]:= 0;
	matriz[2,2]:= 0;
	matriz[2,3]:= 0;
	matriz[2,4]:= 3;
	matriz[2,5]:= 0;
	matriz[2,6]:= 0;
	matriz[2,7]:= 0;
	matriz[2,8]:= 5;
	matriz[2,9]:= 0;
	
	matriz[3,1]:= 0;
	matriz[3,2]:= 6;
	matriz[3,3]:= 0;
	matriz[3,4]:= 0;
	matriz[3,5]:= 0;
	matriz[3,6]:= 9;
	matriz[3,7]:= 0;
	matriz[3,8]:= 0;
	matriz[3,9]:= 0;
	
	matriz[4,1]:= 0;
	matriz[4,2]:= 0;
	matriz[4,3]:= 9;
	matriz[4,4]:= 0;
	matriz[4,5]:= 0;
	matriz[4,6]:= 0;
	matriz[4,7]:= 0;
	matriz[4,8]:= 0;
	matriz[4,9]:= 7;
	
	matriz[5,1]:= 0;
	matriz[5,2]:= 0;
	matriz[5,3]:= 0;
	matriz[5,4]:= 0;
	matriz[5,5]:= 0;
	matriz[5,6]:= 0;
	matriz[5,7]:= 0;
	matriz[5,8]:= 2;
	matriz[5,9]:= 9;
	
	matriz[6,1]:= 2;
	matriz[6,2]:= 4;
	matriz[6,3]:= 0;
	matriz[6,4]:= 0;
	matriz[6,5]:= 0;
	matriz[6,6]:= 0;
	matriz[6,7]:= 0;
	matriz[6,8]:= 0;
	matriz[6,9]:= 0;
	
	matriz[7,1]:= 8;
	matriz[7,2]:= 0;
	matriz[7,3]:= 4;
	matriz[7,4]:= 2;
	matriz[7,5]:= 0;
	matriz[7,6]:= 0;
	matriz[7,7]:= 0;
	matriz[7,8]:= 0;
	matriz[7,9]:= 0;
	
	matriz[8,1]:= 0;
	matriz[8,2]:= 0;
	matriz[8,3]:= 0;
	matriz[8,4]:= 4;
	matriz[8,5]:= 8;
	matriz[8,6]:= 0;
	matriz[8,7]:= 0;
	matriz[8,8]:= 0;
	matriz[8,9]:= 0;
	
	matriz[9,1]:= 0;
	matriz[9,2]:= 0;
	matriz[9,3]:= 0;
	matriz[9,4]:= 0;
	matriz[9,5]:= 0;
	matriz[9,6]:= 0;
	matriz[9,7]:= 0;
	matriz[9,8]:= 0;
	matriz[9,9]:= 0;
	
end;

	procedure sudoku5;
	begin
	matriz[1,1]:= 3;
	matriz[1,2]:= 8;
	matriz[1,3]:= 0;
	matriz[1,4]:= 0;
	matriz[1,5]:= 0;
	matriz[1,6]:= 0;
	matriz[1,7]:= 0;
	matriz[1,8]:= 0;
	matriz[1,9]:= 0;
	
	matriz[2,1]:= 0;
	matriz[2,2]:= 0;
	matriz[2,3]:= 4;
	matriz[2,4]:= 0;
	matriz[2,5]:= 0;
	matriz[2,6]:= 0;
	matriz[2,7]:= 0;
	matriz[2,8]:= 7;
	matriz[2,9]:= 1;
	
	matriz[3,1]:= 0;
	matriz[3,2]:= 0;
	matriz[3,3]:= 0;
	matriz[3,4]:= 0;
	matriz[3,5]:= 0;
	matriz[3,6]:= 0;
	matriz[3,7]:= 0;
	matriz[3,8]:= 0;
	matriz[3,9]:= 0;
	
	matriz[4,1]:= 0;
	matriz[4,2]:= 0;
	matriz[4,3]:= 5;
	matriz[4,4]:= 0;
	matriz[4,5]:= 3;
	matriz[4,6]:= 0;
	matriz[4,7]:= 0;
	matriz[4,8]:= 0;
	matriz[4,9]:= 0;
	
	matriz[5,1]:= 1;
	matriz[5,2]:= 0;
	matriz[5,3]:= 3;
	matriz[5,4]:= 0;
	matriz[5,5]:= 7;
	matriz[5,6]:= 0;
	matriz[5,7]:= 0;
	matriz[5,8]:= 0;
	matriz[5,9]:= 0;
	
	matriz[6,1]:= 0;
	matriz[6,2]:= 0;
	matriz[6,3]:= 0;
	matriz[6,4]:= 0;
	matriz[6,5]:= 0;
	matriz[6,6]:= 6;
	matriz[6,7]:= 0;
	matriz[6,8]:= 0;
	matriz[6,9]:= 0;
	
	matriz[7,1]:= 0;
	matriz[7,2]:= 0;
	matriz[7,3]:= 8;
	matriz[7,4]:= 0;
	matriz[7,5]:= 0;
	matriz[7,6]:= 0;
	matriz[7,7]:= 0;
	matriz[7,8]:= 0;
	matriz[7,9]:= 5;
	
	matriz[8,1]:= 6;
	matriz[8,2]:= 0;
	matriz[8,3]:= 0;
	matriz[8,4]:= 0;
	matriz[8,5]:= 9;
	matriz[8,6]:= 0;
	matriz[8,7]:= 0;
	matriz[8,8]:= 0;
	matriz[8,9]:= 0;
	
	matriz[9,1]:= 0;
	matriz[9,2]:= 0;
	matriz[9,3]:= 9;
	matriz[9,4]:= 0;
	matriz[9,5]:= 0;
	matriz[9,6]:= 0;
	matriz[9,7]:= 6;
	matriz[9,8]:= 0;
	matriz[9,9]:= 0;
	
end;

	procedure sudoku6;
	begin
	matriz[1,1]:= 0;
	matriz[1,2]:= 3;
	matriz[1,3]:= 0;
	matriz[1,4]:= 4;
	matriz[1,5]:= 0;
	matriz[1,6]:= 0;
	matriz[1,7]:= 0;
	matriz[1,8]:= 0;
	matriz[1,9]:= 0;
	
	matriz[2,1]:= 0;
	matriz[2,2]:= 0;
	matriz[2,3]:= 0;
	matriz[2,4]:= 0;
	matriz[2,5]:= 0;
	matriz[2,6]:= 8;
	matriz[2,7]:= 0;
	matriz[2,8]:= 0;
	matriz[2,9]:= 0;
	
	matriz[3,1]:= 0;
	matriz[3,2]:= 0;
	matriz[3,3]:= 0;
	matriz[3,4]:= 0;
	matriz[3,5]:= 0;
	matriz[3,6]:= 0;
	matriz[3,7]:= 9;
	matriz[3,8]:= 6;
	matriz[3,9]:= 0;
	
	matriz[4,1]:= 8;
	matriz[4,2]:= 0;
	matriz[4,3]:= 0;
	matriz[4,4]:= 0;
	matriz[4,5]:= 0;
	matriz[4,6]:= 4;
	matriz[4,7]:= 0;
	matriz[4,8]:= 0;
	matriz[4,9]:= 0;
	
	matriz[5,1]:= 0;
	matriz[5,2]:= 0;
	matriz[5,3]:= 0;
	matriz[5,4]:= 0;
	matriz[5,5]:= 3;
	matriz[5,6]:= 0;
	matriz[5,7]:= 0;
	matriz[5,8]:= 0;
	matriz[5,9]:= 0;
	
	matriz[6,1]:= 3;
	matriz[6,2]:= 0;
	matriz[6,3]:= 9;
	matriz[6,4]:= 0;
	matriz[6,5]:= 0;
	matriz[6,6]:= 0;
	matriz[6,7]:= 0;
	matriz[6,8]:= 1;
	matriz[6,9]:= 0;
	
	matriz[7,1]:= 0;
	matriz[7,2]:= 0;
	matriz[7,3]:= 0;
	matriz[7,4]:= 0;
	matriz[7,5]:= 0;
	matriz[7,6]:= 0;
	matriz[7,7]:= 0;
	matriz[7,8]:= 2;
	matriz[7,9]:= 9;
	
	matriz[8,1]:= 4;
	matriz[8,2]:= 0;
	matriz[8,3]:= 0;
	matriz[8,4]:= 0;
	matriz[8,5]:= 5;
	matriz[8,6]:= 0;
	matriz[8,7]:= 0;
	matriz[8,8]:= 0;
	matriz[8,9]:= 0;
	
	matriz[9,1]:= 0;
	matriz[9,2]:= 1;
	matriz[9,3]:= 0;
	matriz[9,4]:= 0;
	matriz[9,5]:= 0;
	matriz[9,6]:= 7;
	matriz[9,7]:= 0;
	matriz[9,8]:= 0;
	matriz[9,9]:= 0;
	
end;

	
	procedure mostrar_matrizinicial;
	var romperaleatorio: integer;
		j,k: integer;
		begin //inicio de matriz inicial
		repeat
		auxiliar:= random(100);	
		i:= random(100);
		j:= random(100);
		k:=random(100);
		
		if(auxiliar >= i) and (auxiliar >= j) and (auxiliar >= k) then
		begin
		sudoku1;
		romperaleatorio:= 1;
		end;
		
		if(auxiliar <= i) and (auxiliar <= j) and (auxiliar <= k) then
		begin
		sudoku2;
		romperaleatorio:= 1;
		break;
		end;
		
		if(auxiliar <= i) and (auxiliar >= j) and (auxiliar <= k) then
		begin
		sudoku3;
		romperaleatorio:= 1;
		break;
		end;
		
		if(auxiliar >= i) and (auxiliar <= j) and (auxiliar >= k) then
		begin
		sudoku4;
		romperaleatorio:= 1;
		break;
		end;
		
		if(auxiliar = i) or (auxiliar <= j) and (auxiliar >= k) then
		begin
		sudoku5;
		romperaleatorio:= 1;
		break;
		end;
		
		if(auxiliar = i) or (auxiliar = j) and (auxiliar = k) then
		begin
		sudoku6;
		romperaleatorio:= 1;
		break;
		end;
		
		until(romperaleatorio = 1);
		
		end; 
		
	procedure imprimir_matriz;
	begin
	for fila:= 1 to 9 do
			begin
				for columna := 1 to 9 do
				begin
					write(' [',matriz[fila, columna] ,'] '); // Alinea los números
				end;
			writeln; // Salto de línea para la siguiente fila
			end;
	end;

	procedure imprimir_respaldo;
	begin
	
	
	for fila:= 1 to 9 do
			begin
				for columna := 1 to 9 do
				begin
					write(' [',respaldo[fila, columna] ,'] '); // Alinea los números
				end;
			writeln; // Salto de línea para la siguiente fila
			end;
	end;

	procedure cambiarfilacolumna;
	
	begin
		
		repeat
		textcolor(15);
		imprimir_matriz;
		
		writeln('1-para ingresar numero');
		writeln('2-para eliminar numero');
		writeln('3- rendirse');
		readln(opc_ingreborrar);
		
		if (opc_ingreborrar='1') then
			begin
				writeln('ingrese una fila');
				readln(camfila);
				
				 writeln('ingrese una columna');
				readln(camcolum);
				
				writeln('ingrese el numero que se va a ocupar en ese espacio:');
				readln(camposi);
				
				
				if (matriz[camfila, camcolum] <> 0) then 
				begin
				textcolor(yellow);
				writeln('esta casilla esta ocupada');
				readln;
				clrscr;
				end
				
				else 
				begin
				auxiliar:= matriz[camfila, camcolum];
				matriz[camfila, camcolum]:= camposi;
				end;
			end;
			
		if (opc_ingreborrar= '2') then
			begin
				clrscr; 
				writeln('borrado');
				imprimir_respaldo;
				
				//para salir del repeat
				camposi:= 1;
				matriz[camfila, camcolum]:= camposi;
				delay(2000);
			end;
		
		if (opc_ingreborrar= '3') then
			begin
			writeln('te has rendido...');
			delay(2000);
			
			
	matriz[1,1]:= 5;
	matriz[1,2]:= 3;
	matriz[1,3]:= 4;
	matriz[1,4]:= 6;
	matriz[1,5]:= 7;
	matriz[1,6]:= 8;
	matriz[1,7]:= 9;
	matriz[1,8]:= 1;
	matriz[1,9]:= 2;
	
	matriz[2,1]:= 6;
	matriz[2,2]:= 7;
	matriz[2,3]:= 2;
	matriz[2,4]:= 1;
	matriz[2,5]:= 9;
	matriz[2,6]:= 5;
	matriz[2,7]:= 3;
	matriz[2,8]:= 4;
	matriz[2,9]:= 8;
	
	matriz[3,1]:= 1;
	matriz[3,2]:= 9;
	matriz[3,3]:= 8;
	matriz[3,4]:= 3;
	matriz[3,5]:= 4;
	matriz[3,6]:= 2;
	matriz[3,7]:= 5;
	matriz[3,8]:= 6;
	matriz[3,9]:= 7;
	
	matriz[4,1]:= 8;
	matriz[4,2]:= 5;
	matriz[4,3]:= 9;
	matriz[4,4]:= 7;
	matriz[4,5]:= 6;
	matriz[4,6]:= 1;
	matriz[4,7]:= 4;
	matriz[4,8]:= 2;
	matriz[4,9]:= 3;
	
	matriz[5,1]:= 4;
	matriz[5,2]:= 2;
	matriz[5,3]:= 6;
	matriz[5,4]:= 8;
	matriz[5,5]:= 5;
	matriz[5,6]:= 3;
	matriz[5,7]:= 7;
	matriz[5,8]:= 9;
	matriz[5,9]:= 1;
	
	matriz[6,1]:= 7;
	matriz[6,2]:= 1;
	matriz[6,3]:= 3;
	matriz[6,4]:= 9;
	matriz[6,5]:= 2;
	matriz[6,6]:= 4;
	matriz[6,7]:= 8;
	matriz[6,8]:= 5;
	matriz[6,9]:= 6;
	
	matriz[7,1]:= 9;
	matriz[7,2]:= 6;
	matriz[7,3]:= 1;
	matriz[7,4]:= 5;
	matriz[7,5]:= 3;
	matriz[7,6]:= 7;
	matriz[7,7]:= 2;
	matriz[7,8]:= 8;
	matriz[7,9]:= 4;
	
	matriz[8,1]:= 2;
	matriz[8,2]:= 8;
	matriz[8,3]:= 7;
	matriz[8,4]:= 4;
	matriz[8,5]:= 1;
	matriz[8,6]:= 9;
	matriz[8,7]:= 6;
	matriz[8,8]:= 3;
	matriz[8,9]:= 5;
	
	matriz[9,1]:= 3;
	matriz[9,2]:= 4;
	matriz[9,3]:= 5;
	matriz[9,4]:= 2;
	matriz[9,5]:= 8;
	matriz[9,6]:= 6;
	matriz[9,7]:= 1;
	matriz[9,8]:= 7;
	matriz[9,9]:= 9;
			
				camposi:= 1;
				matriz[camfila, camcolum]:= camposi;
				break;
			end;
		until(matriz[camfila, camcolum] = camposi);
	    
	    
	end;
	
	
	procedure borrarnumero;
	begin
	matriz[camfila, camcolum]:= respaldo[camfila,camcolum];
	end;
	
	procedure menu;
	var
	opc, opc_salir: char;
	begin
	repeat
	clrscr;
	writeln('que desea hacer?');
	writeln('1-jugar');
	writeln('2-salir');
	readln(opc);
	
	
	if (opc = '1') then
		begin
		clrscr;
		writeln('Resuelva el siguiente sudoku');
		writeln('jugador ', nombre);
	    mostrar_matrizinicial;
	    delay(2000);
	    
	    repeat
	    if (matriz[1,1] = 0) or (matriz[1,2] = 0) or (matriz[1,3] = 0) or (matriz[1,4] = 0) or (matriz[1,5] = 0) or (matriz[1,6] = 0) or (matriz[1,7]= 0) or (matriz[1,8] = 0) or (matriz[1,9] = 0) or
(matriz[2,1] = 0) or (matriz[2,3] = 0) or (matriz[2,3] = 0) or (matriz[2,5] = 0) or (matriz[2,5] = 0) or (matriz[2,6] = 0) or (matriz[2,7] = 0) or (matriz[2,8] = 0) or (matriz[2,9] = 0) or
(matriz[3,1] = 0) or (matriz[3,2] = 0) or (matriz[3,3] = 0) or (matriz[3,4] = 0) or (matriz[3,5] = 0) or (matriz[3,6] = 0) or (matriz[3,7] = 0) or (matriz[3,8] = 0) or (matriz[3,9] = 0) or
(matriz[4,1] = 0) or (matriz[4,2] = 0) or (matriz[4,3] = 0) or (matriz[4,4] = 0) or (matriz[4,5] = 0) or (matriz[4,6] = 0) or (matriz[4,7] = 0) or (matriz[4,8] = 0) or (matriz[4,9] = 0) or
(matriz[5,1] = 0) or (matriz[5,2] = 0) or (matriz[5,3] = 0) or (matriz[5,4] = 0) or (matriz[5,5] = 0) or (matriz[5,6] = 0) or (matriz[5,7] = 0) or (matriz[5,8] = 0) or (matriz[5,9] = 0) or
(matriz[6,1] = 0) or (matriz[6,2] = 0) or (matriz[6,3] = 0) or (matriz[6,4] = 0) or (matriz[6,5] = 0) or (matriz[6,6] = 0) or (matriz[6,7] = 0) or (matriz[6,8] = 0) or (matriz[6,9] = 0) or
(matriz[7,1] = 0) or (matriz[7,2] = 0) or (matriz[7,3] = 0) or (matriz[7,4] = 0) or (matriz[7,5] = 0) or (matriz[7,6] = 0) or (matriz[7,7] = 0) or (matriz[7,8] = 0) or (matriz[7,9] = 0) or
(matriz[8,1] = 0) or (matriz[8,2] = 0) or (matriz[8,3] = 0) or (matriz[8,4] = 0) or (matriz[8,5] = 0) or (matriz[8,6] = 0) or (matriz[8,7] = 0) or (matriz[8,8] = 0) or (matriz[8,9] = 0) or
(matriz[9,1] = 0) or (matriz[9,2] = 0) or (matriz[9,3] = 0) or (matriz[9,4] = 0) or (matriz[9,5] = 0) or (matriz[9,6] = 0) or (matriz[9,7] = 0) or (matriz[9,8] = 0) or (matriz[9,9] = 0) then
	    begin
	    clrscr;
	    cambiarfilacolumna;
	    end;
	   

	    
	    
	     until
(matriz[1,1] <> 0) and (matriz[1,2] <> 0) and (matriz[1,3] <> 0) and (matriz[1,4] <> 0) and (matriz[1,5] <> 0) and (matriz[1,6] <> 0) and (matriz[1,7] <> 0) and (matriz[1,8] <> 0) and (matriz[1,9] <> 0) and 
(matriz[2,1] <> 0) and (matriz[2,3] <> 0) and (matriz[2,3] <> 0) and (matriz[2,5] <> 0) and (matriz[2,5] <> 0) and (matriz[2,6] <> 0) and (matriz[2,7] <> 0) and (matriz[2,8] <> 0) and (matriz[2,9] <> 0) and
(matriz[3,1] <> 0) and (matriz[3,2] <> 0) and (matriz[3,3] <> 0) and (matriz[3,4] <> 0) and (matriz[3,5] <> 0) and (matriz[3,6] <> 0) and (matriz[3,7] <> 0) and (matriz[3,8] <> 0) and (matriz[3,9] <> 0) and
(matriz[4,1] <> 0) and (matriz[4,2] <> 0) and (matriz[4,3] <> 0) and (matriz[4,4] <> 0) and (matriz[4,5] <> 0) and (matriz[4,6] <> 0) and (matriz[4,7] <> 0) and (matriz[4,8] <> 0) and (matriz[4,9] <> 0) and
(matriz[5,1] <> 0) and (matriz[5,2] <> 0) and (matriz[5,3] <> 0) and (matriz[5,4] <> 0) and (matriz[5,5] <> 0) and (matriz[5,6] <> 0) and (matriz[5,7] <> 0) and (matriz[5,8] <> 0) and (matriz[5,9] <> 0) and
(matriz[6,1] <> 0) and (matriz[6,2] <> 0) and (matriz[6,3] <> 0) and (matriz[6,4] <> 0) and (matriz[6,5] <> 0) and (matriz[6,6] <> 0) and (matriz[6,7] <> 0) and (matriz[6,8] <> 0) and (matriz[6,9] <> 0) and
(matriz[7,1] <> 0) and (matriz[7,2] <> 0) and (matriz[7,3] <> 0) and (matriz[7,4] <> 0) and (matriz[7,5] <> 0) and (matriz[7,6] <> 0) and (matriz[7,7] <> 0) and (matriz[7,8] <> 0) and (matriz[7,9] <> 0) and
(matriz[8,1] <> 0) and (matriz[8,2] <> 0) and (matriz[8,3] <> 0) and (matriz[8,4] <> 0) and (matriz[8,5] <> 0) and (matriz[8,6] <> 0) and (matriz[8,7] <> 0) and (matriz[8,8] <> 0) and (matriz[8,9] <> 0) and
(matriz[9,1] <> 0) and (matriz[9,2] <> 0) and (matriz[9,3] <> 0) and (matriz[9,4] <> 0) and (matriz[9,5] <> 0) and (matriz[9,6] <> 0) and (matriz[9,7] <> 0) and (matriz[9,8] <> 0) and (matriz[9,9] <> 0); // este repeat lo que hace es hasta que todas las casillas esten rellenadas no sale del sudoku
	    
	    
	    if (matriz[1,1] <> matriz[1,2]) and (matriz[1,2] <> matriz[1,3]) and  (matriz[1,3] <> matriz[1,4]) and (matriz[1,4] <> matriz[1,5]) and //primera fila
	    (matriz[1,5] <> matriz[1,6]) and (matriz[1,6] <> matriz[1,7]) and (matriz[1,7] <> matriz[1,8]) and (matriz[1,8] <> matriz[1,9])  then
	    begin
	    if (matriz[1,1] <> matriz[2,1]) and (matriz[2,1] <> matriz[3,1]) and  (matriz[3,1] <> matriz[4,1]) and (matriz[4,1] <> matriz[5,1]) and //primera columna
	    (matriz[5,1] <> matriz[6,1]) and (matriz[6,1] <> matriz[7,1]) and (matriz[7,1] <> matriz[8,1]) and (matriz[8,1] <> matriz[9,1])  then
	    begin
	    
	    if (matriz[2,1] <> matriz[2,2]) and (matriz[2,2] <> matriz[2,3]) and  (matriz[2,3] <> matriz[2,4]) and (matriz[2,4] <> matriz[2,5]) and //segunda fila
	    (matriz[2,5] <> matriz[2,6]) and (matriz[2,6] <> matriz[2,7]) and (matriz[2,7] <> matriz[2,8]) and (matriz[2,8] <> matriz[2,9])  then
	    begin
	    if (matriz[1,2] <> matriz[2,2]) and (matriz[2,2] <> matriz[3,2]) and  (matriz[3,2] <> matriz[4,2]) and (matriz[4,2] <> matriz[5,2]) and //segunda columna
	    (matriz[5,2] <> matriz[6,2]) and (matriz[6,2] <> matriz[7,2]) and (matriz[7,2] <> matriz[8,2]) and (matriz[8,2] <> matriz[9,2])  then
	    begin
	    
	     if (matriz[3,1] <> matriz[3,2]) and (matriz[3,2] <> matriz[3,3]) and  (matriz[3,3] <> matriz[3,4]) and (matriz[3,4] <> matriz[3,5]) and //tercera fila
	    (matriz[3,5] <> matriz[3,6]) and (matriz[3,6] <> matriz[3,7]) and (matriz[3,7] <> matriz[3,8]) and (matriz[3,8] <> matriz[3,9])  then
	    begin
	    if (matriz[1,3] <> matriz[2,3]) and (matriz[2,3] <> matriz[3,3]) and  (matriz[3,3] <> matriz[4,3]) and (matriz[4,3] <> matriz[5,3]) and //tercera columna
	    (matriz[5,3] <> matriz[6,3]) and (matriz[6,3] <> matriz[7,3]) and (matriz[7,3] <> matriz[8,3]) and (matriz[8,3] <> matriz[9,3])  then
	    begin
	    
	    if (matriz[4,1] <> matriz[4,2]) and (matriz[4,2] <> matriz[4,3]) and  (matriz[4,3] <> matriz[4,4]) and (matriz[4,4] <> matriz[4,5]) and //cuarta fila
	    (matriz[4,5] <> matriz[4,6]) and (matriz[4,6] <> matriz[4,7]) and (matriz[4,7] <> matriz[4,8]) and (matriz[4,8] <> matriz[4,9])  then
	    begin
	    if (matriz[1,4] <> matriz[2,4]) and (matriz[2,4] <> matriz[3,4]) and  (matriz[3,4] <> matriz[4,4]) and (matriz[4,4] <> matriz[5,4]) and //cuarta columna
	    (matriz[5,4] <> matriz[6,4]) and (matriz[6,4] <> matriz[7,4]) and (matriz[7,4] <> matriz[8,4]) and (matriz[8,4] <> matriz[9,4])  then
	    begin
	    
	     if (matriz[5,1] <> matriz[5,2]) and (matriz[5,2] <> matriz[5,3]) and  (matriz[5,3] <> matriz[5,4]) and (matriz[5,4] <> matriz[5,5]) and //quinta fila
	    (matriz[5,5] <> matriz[5,6]) and (matriz[5,6] <> matriz[5,7]) and (matriz[5,7] <> matriz[5,8]) and (matriz[5,8] <> matriz[5,9])  then
	    begin
	    if (matriz[1,5] <> matriz[2,5]) and (matriz[2,5] <> matriz[3,5]) and  (matriz[3,5] <> matriz[4,5]) and (matriz[4,5] <> matriz[5,5]) and //quinta columna
	    (matriz[5,5] <> matriz[6,5]) and (matriz[6,5] <> matriz[7,5]) and (matriz[7,5] <> matriz[8,5]) and (matriz[8,5] <> matriz[9,5])  then
	    begin
	    
	    if (matriz[6,1] <> matriz[6,2]) and (matriz[6,2] <> matriz[6,3]) and  (matriz[6,3] <> matriz[6,4]) and (matriz[6,4] <> matriz[6,5]) and //sexta fila
	    (matriz[6,5] <> matriz[6,6]) and (matriz[6,6] <> matriz[6,7]) and (matriz[6,7] <> matriz[6,8]) and (matriz[6,8] <> matriz[6,9])  then
	    begin
	    if (matriz[1,6] <> matriz[2,6]) and (matriz[2,6] <> matriz[3,6]) and  (matriz[3,6] <> matriz[4,6]) and (matriz[4,6] <> matriz[5,6]) and //sexta columna
	    (matriz[5,6] <> matriz[6,6]) and (matriz[6,6] <> matriz[7,6]) and (matriz[7,6] <> matriz[8,6]) and (matriz[8,6] <> matriz[9,6])  then
	    begin
	    
	    if (matriz[7,1] <> matriz[7,2]) and (matriz[7,2] <> matriz[7,3]) and  (matriz[7,3] <> matriz[7,4]) and (matriz[7,4] <> matriz[7,5]) and //septima fila
	    (matriz[7,5] <> matriz[7,6]) and (matriz[7,6] <> matriz[7,7]) and (matriz[7,7] <> matriz[7,8]) and (matriz[7,8] <> matriz[7,9])  then
	    begin
	    if (matriz[1,7] <> matriz[2,7]) and (matriz[2,7] <> matriz[3,7]) and  (matriz[3,7] <> matriz[4,7]) and (matriz[4,7] <> matriz[5,7]) and //septima columna
	    (matriz[5,7] <> matriz[6,7]) and (matriz[6,7] <> matriz[7,7]) and (matriz[7,7] <> matriz[8,7]) and (matriz[8,7] <> matriz[9,7])  then
	    begin
	    
	    if (matriz[8,1] <> matriz[8,2]) and (matriz[8,2] <> matriz[8,3]) and  (matriz[8,3] <> matriz[8,4]) and (matriz[8,4] <> matriz[8,5]) and //optava fila
	    (matriz[8,5] <> matriz[8,6]) and (matriz[8,6] <> matriz[8,7]) and (matriz[8,7] <> matriz[8,8]) and (matriz[8,8] <> matriz[8,9])  then
	    begin
	    if (matriz[1,8] <> matriz[2,8]) and (matriz[2,8] <> matriz[3,8]) and  (matriz[3,8] <> matriz[4,8]) and (matriz[4,8] <> matriz[5,8]) and //optava columna
	    (matriz[5,8] <> matriz[6,8]) and (matriz[6,8] <> matriz[7,8]) and (matriz[7,8] <> matriz[8,8]) and (matriz[8,8] <> matriz[9,8])  then
	    begin
	    
	     if (matriz[9,1] <> matriz[9,2]) and (matriz[9,2] <> matriz[9,3]) and  (matriz[9,3] <> matriz[9,4]) and (matriz[9,4] <> matriz[9,5]) and //novena fila
	    (matriz[9,5] <> matriz[9,6]) and (matriz[9,6] <> matriz[9,7]) and (matriz[9,7] <> matriz[9,8]) and (matriz[9,8] <> matriz[9,9])  then
	    begin
	    if (matriz[1,9] <> matriz[2,9]) and (matriz[2,9] <> matriz[3,9]) and  (matriz[3,9] <> matriz[4,9]) and (matriz[4,9] <> matriz[5,9]) and //novena columna
	    (matriz[5,9] <> matriz[6,9]) and (matriz[6,9] <> matriz[7,9]) and (matriz[7,9] <> matriz[8,9]) and (matriz[8,9] <> matriz[9,9])  then
	    begin
	    
	    writeln('felicidades has ganado!!!!');
	    readln();
	    opc_salir:= opc;
	    end; //primera fila

	    end; //primera columna
		
	    end; //segunda fila
		
	    end; //segunda columna
		
	    end; //tercera fila
		
	    end; //tercera columna
		
	    end; //cuarta fila
		
	    end; //cuarta columna
		
	    end; //quinta fila
	     
	    end; //quinta columna
	    
	    end; //sexta fila
	
	    end; //sexta columna
	     
	    end; //septima fila
	    
		
	    end; //septima columna
	    
		
	    end; //optava fila
	   
		
	    end; //optava columna
	     
		
		end; //novena fila
		 
		
		end; //novena columna
		readkey;
	    
	    end;
		
	if (opc = '2') then 
		begin
		writeln('saliendo');
		opc_salir:= opc;
		delay(2000);
		clrscr;
		end;
	until(opc_salir=opc);
	end;
	
	
	{procedure elegir_filcolum;
	var: camfila, camcolum: integer;
	begin
	writeln('ingrese la fila: ');
	readln(camfila);
	
	end;}
	
BEGIN
	
	clrscr;
	textcolor(15);
	writeln('bienvenido al sudoku de Santiago Suarez y Miguel luna');
	delay(2000);
	clrscr;
	writeln('ingrese su nombre:');
	readln(nombre);
	
	writeln('ingrese su cedula:');
	readln(cedula);
	
	menu;
	
	
	
	
	
	
	
	
END.

