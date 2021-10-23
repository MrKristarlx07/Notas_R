#######
  #Autor: @MrKristarlx07 (GitHub) | @marbasz (Twitter)
  #Script: Devolver la cadena de complemento en reversa de una secuencia DNA; dependiendo de las parejas [A-T]; [C-G]
  #Lenguaje: R

  #Notas:
    #The reverse complement of a DNA string s is the string s^c formed by reversing the symbols of s, then taking the complement of each symbol (e.g., the reverse complement of "GTCA" is "TGAC").
#######

library("stringi") #Usaremos la librería stringi para aplicar el reverso a la cadena

dna <- readline() #Lectura de la cadena de DNA
dna <- stri_reverse(dna) #Aplicamos reversa a la cadena de DNA
bis_dna <- strsplit(dna, "")[[1]] #Nos pasa el string dna en una cadena de caracteres para poder manipularles

letra <- NA
rna <- character() #Aquí almacenaremos la cadena rna final

for(letra in bis_dna) #recorremos la cadena de caracteres bis_dna & dependiendo aplicamos los condicionales a cada letra
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
          rna <- c(rna, "T")
        else
          stop("invalid dna strand")
      }
    }
  }
}

print(paste(rna, collapse="")) #Imprimimos la cadena de caracteres rna, pero usamos paste para entregarla como un string
