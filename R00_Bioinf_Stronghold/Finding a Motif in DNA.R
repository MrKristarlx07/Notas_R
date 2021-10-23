#######
  #Autor: @MrKristarlx07 (GitHub) | @marbasz (Twitter)
  #Script: Recibe cadena de DNA & "motif" (segmento evaluador), a partir de ello, devolver las posiciones de la cadena de DNA original donde se puede encontrar motif
  #Lenguaje: R

  #Notas:
    #The position of a symbol in a string is the total number of symbols found to its left, including itself (e.g., the positions of all occurrences of 'U' in "AUGCUUCAGAAAGGUCUUACG" are 2, 5, 6, 15, 17, and 18). The symbol at position i of s is denoted by s[i].
#######

dna <- readline() #Lee cadena de DNA
motif <- readline() #Recibe segmento evaluador

dna_Frag <- strsplit(dna, "")[[1]] #Transformamos a DNA de string a cadena de caracteres
motif_Frag <- strsplit(motif, "")[[1]] #Transformamos el segmento evaluador de string a cadena de caracteres

index <- 1
positions <- c() #Este arreglo guardará las posiciones donde está el primer elemento del segmento evaluador dentro de nuestra cadena de DNA

while(index<=(nchar(dna)-nchar(motif))) #Vamos a recorrer la cadena DNA desde 1 hasta su final menos la extensión del motif, para evitar acceder a posiciones no váludas & provocar error de espacio de búsqueda
{
  if(dna_Frag[index]==motif_Frag[1]) #Si la letra del DNA corresponde a la primera letra del segmento evaluador
  {
    if(substring(dna, index, (index+(nchar(motif)-1)))==motif) #Extraemos a partir de la posición de la letra evaluada un segmento de su cadena (sería desde index hasta index+(tamaño_motif-1)), luego la comparamos con motif en versión string, aprovechándonos de que substring nos devuelve string igualmente
    {
      positions <- c(positions, index) #En caso de que sean iguales, simplemente agregamos a nuestro arreglo de posiciones el index
    }
  }
  index <- index+1
}

print(positions)
