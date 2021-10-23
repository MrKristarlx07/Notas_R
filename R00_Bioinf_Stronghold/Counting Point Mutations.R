#######
  #Autor: @MrKristarlx07 (GitHub) | @marbasz (Twitter)
  #Script: A partir de dos cadenas de DNA, calcular la Hamming Distance entre ambas
  #Lenguaje: R

  #Notas:
    #Hamming distance between two strings is simply the number of positions in the strings at which corresponding symbols differ
#######

dna_A <- readline() #Leemos primera cadena de DNA
dna_B <- readline() #Leemos segunda cadena de DNA

bis_dna_A <- strsplit(dna_A, "")[[1]]  #Transformamos el primer string de DNA en una cadena de caracteres
bis_dna_B <- strsplit(dna_B, "")[[1]]  #Transformamos el segundo string de DNA en una cadena de caracteres

letra_A <- NA
letra_B <- NA
cont <- 0 #Contador de Hamming distance
index <- 1 #Apuntador de la posición a evaluar

while(index <= nchar(dna_A)) #nchar nos devuelve en un número entero la extensión de un string
{
  if(bis_dna_A[index]!=bis_dna_B[index]) #Si las letras de las cadenas A & B difieren, se aumenta contador en una cifra
    cont <- cont+1
  index <- index+1
}

print(cont)
