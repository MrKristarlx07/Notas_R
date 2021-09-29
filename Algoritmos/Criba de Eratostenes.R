#######
      #Autor: Dr. Francisco Javier Almaguer Martínez. (Presentado en la I Escuela de Verano 2021 U.A.N.L.- Módulo: Modelación Estocástica)
      #Scrip: A partir de un número n, nos devuelve todos los primos menores
      #Lenguaje: R

      #Notas:
        #El scrip le devuelve de pantalla el array de primos, se anexan las líneas para guardarlo en un csv
#######

crear_Crib_Eratostenes <- function(N)
{
  base <- 2:N #Se crea un array desde 2 hasta N, que se usará para extraer los posibles primos
  index <- 1 #Se inicializa nuestro index en 1 que comenzará a verificar si es primo desde 2 
  while(base[index]<=sqrt(N)) #Se comprueba cada número si es primo, solamente se llega hasta raíz de N
  {
    base <- base[base%%base[index]!=0 | base==base[index]]
    index <- index+1
  }
  return(base)
}

N <- 2000 #Para modificar el tope posible, edite el número que se asigna a N
primos <- crear_Crib_Eratostenes(N)
print(primos) #Se imprime por pantalla la cadena de primos ya asignada al array[] primos

##############################################
  #Para guardar los datos en un csv que aparece en su escritorio, cambie "print(primos)" por las siguientes dos línes (en la parte de V&R coloque su usuario registrado en pc)
    #setwd("C:/Users/V&R/Desktop")
    #write.csv(primos, file="Cadena_de_primos.csv")
##############################################