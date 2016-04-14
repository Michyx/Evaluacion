Proceso evaluacion
Escribir "Entrega de datos:";
escribir "Desnutridos : " ,desnutrido ;
escribir "Bien nutridos : " ,bienutrido ;
escribir "Con sobrepeso : ", sobrepeso;
auxiliar <- auxiliar + 1;
escribir "Numero de centros asistenciales : ", centroasistencial;
si rangoedad1_3 > rangoedad4_6 y rangoedad1_3  >rangoedad7_9
	escribir "El promedio de desnutricion es de 1 y 3 años"
FinSi
si rangoedad4_6 > rangoedad1_3 y rangoedad4_6  >rangoedad7_9
	escribir "El promedio de desnutricion es de 4 y 6 años"
FinSi
si rangoedad7_9 > rangoedad4_6 y rangoedad7_9 >rangoedad1_3
	escribir "El promedio de desnutricion es de 7 y 9 años"
FinSi
finsi

si( x = 2) entonces
	escribir "Ingrese el nombre del centro asistencial";
	leer nombre ;
	centroasistencial <- centroasistencial +1;
FinSi
si( x = 3) y (centroasistencial>=1) entonces
	escribir "Ha ingresado un niño"
	escribir "Dentro del centro asistencial : " nombre ;
	niño <- niño + 1 
	repetir
		escribir "Ingrese la edad del niño, no mayor a 9";
		leer edad
	Hasta Que edad <=9 o edad <= 0
	escribir "Ingrese el peso del niño";
	rango1 <- (3*edad + 7)- 4
	rango2 <- (3*edad + 7)+ 4
	auxiliar <- 0
	leer peso;
	escribir "Rango de peso ",rango1,"-",rango2;
	si peso <= rango1
		escribir "El niño tiene desnutricion";
		desnutrido <- desnutrido + 1;
		auxiliar <- auxiliar + 1
		segun edad hacer
			1,2,3:
				rangoedad1_3 <- rangoedad1_3 + 1    
			4,5,6:
				rangoedad4_6<- rangoedad4_6 + 1
			7,8,9:
				rangoedad7_9<- rangoedad7_9 + 1
		FinSegun
	finsi
	si peso >= rango2
		escribir "El niño tiene sobrepeso";
		sobrepeso <- sobrepeso + 1; 
		auxiliar <- auxiliar + 1
		
	FinSi
	si auxiliar == 0
		escribir "El niño esta bien nutrido";
		bienutrido <- biennutrido + 1;
	finsi   
	auxiliar <- 0
FinSi

//-------------------------------   
si( x >4) o (x < 0 )entonces
	escribir "El numero ingresado no es correcto";
	escribir " Presione una tecla para continuar";
	Esperar Tecla
finsi


Hasta Que auxiliar == 1
FinProceso