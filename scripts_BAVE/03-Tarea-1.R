#Examen 1
#Preguntas de esta tarea
#Si hubiéramos empezado a contar segundos a partir de las 12 campanadas que
#marcan el inicio de 2018, ¿a qué hora de qué día de qué año llegaríamos a 
#los 250 millones de segundos? ¡Cuidado con los años bisiestos!
  
date = function(year,seconds){
  print('Minutos y resto de segundos')
  minutos = seconds%/%60
  print(paste('minutos =', seconds%/%60))
  segundos_f = seconds%%60
  print(paste('Resto de segundos = ', seconds%%60))
  
  print('Horas y resto de minutos')
  horas = minutos%/%60
  print(paste('Horas =', minutos%/%60))
  minutos_f = minutos%%60
  print(paste('Resto de minutos = ', minutos%%60))
  
  print('Dias y resto de horas')
  dias = horas%/%24
  print(paste('dias =', horas%/%24))
  horas_f = horas%%24
  print(paste('Resto de horas = ', horas%%24))
  
  print('Años y resto de dias')
  Años = dias%/%365
  print(paste('Años =', dias%/%365))
  dias_f = dias%%365
  print(paste('Resto de dias = ', dias%%365))
  
  final_year = year + Años 
  final_day = dias_f-2 #Se restan dos dias correspondientes a los años bcisiestos 2020 y 2024
  final_hour = horas_f
  final_min = minutos_f
  final_sec = segundos_f
  
  print(sprintf('A partir del 2018, se llega a 250 millones de segundos 
  a las %s:%s:%s pm del dia %s del año %s',final_hour,final_min,
  final_sec,final_day,final_year))
  }
date(2018,250000000)

date2 = function(start_year,seconds){
  years = start_year + (((250000000%/%60)%/%60)%/%24)%/%365
  #print (year)
  
  days = ((((250000000%/%60)%/%60)%/%24)%%365) - 2 #Se restan dos dias correspondientes a los años bcisiestos 2020 y 2024
  #print(days)
  
  hours = ((250000000%/%60)%/%60)%%24
  #print(hours)
  
  minutes = (250000000%/%60)%%60
  #print(minutes)
  
  seconds = 250000000%%60
  #print(seconds)
  
  print(sprintf('A partir del 2018, se llega a 250 millones de segundos 
  a las %s:%s:%s pm del dia %s del año %s',hours, minutes, seconds, days, years))
}

date2(2018,250000000)

#Cread una función que os resuelva una ecuación de primer grado 
#(de la forma Ax+B=0). Es decir, vosotros tendréis que introducir 
#como parámetros los coeficientes (en orden) y la función os tiene que 
#devolver la solución. Por ejemplo, si la ecuación es 2x+4=0, 
#vuestra función os tendría que devolver -2.
#Una vez creada la función, utilizadla para resolver las siguientes ecuaciones de primer grado:
  
#5x+3=0

#7x+4 = 18

#x+1 = 1

solution = function(a,b,c){
    x=(c-b)/a
    print(paste(sprintf('Para la ecuacion %sx + %s = %s, x= ', a,b,c,x),x))
}
solution(5,3,0)
solution(7,4,18)
solution(1,1,1)

#Dad una expresión para calcular 3e-π y a continuación, dad el resultado que 
#habéis obtenido con R redondeado a 3 cifras decimales.

expresion = ((3*exp(1))-pi)
print(round(expresion,3))

#Dad el módulo del número complejo (2+3i)^2/(5+8i) redondeado a 3 cifras decimales.

print(round(Mod((2+3i)^2/(5+8i)),3))

print(round((Mod((2+3i)^2/(5+8i))),3))
