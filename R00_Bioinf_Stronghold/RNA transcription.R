#######
  #Autor: @MrKristarlx07 (GitHub) | @marbasz (Twitter)
  #Script: Given a DNA strand, return its RNA complement (per RNA transcription).
  #Lenguaje: R

  #Notas:
    #Given a DNA strand, its transcribed RNA strand is formed by replacing each nucleotide with its complement: (G->C), (C->G), (T->A), (A->U)
#######

dna <- readline() #Se hace lectura de toda la línea única de la cadena de caracteres
sub_dna <- substr(dna, 0, nchar(dna)) #Se extrae todo el input para guardarlo en la cadena de modificación
bis_dna <- strsplit(sub_dna, "")[[1]] #Divide elementos de la cadena de caracteres de uno en uno para poder leerles adecuadamente de forma individual

letra <- NA
rna <- character() #creamos la cadena de caracteres donde será guardada la secuencia de rna

for(letra in bis_dna) #Se recorre la cadena de DNA ya dividida de forma individual & se hace la transformación según el nucleótido
{
  if(letra=="G")
    rna <- c(rna, "C")
  else
  {
    if(letra=="C")
      rna <- c(rna, "G")
    else
    {
      if(letra=="T")
        rna <- c(rna, "A")
      else
      {
        if(letra=="A")
          rna <- c(rna, "U")
        else
          stop("invalid dna strand") #Si encuentra alguna letra extraña, bota programa
      }
    }
  }
}

print(paste(rna, collapse="")) #Imprime la cadena de RNA, pero antes elimina las separaciones, para dejarla como un string único
