#!/bin/bash
PN=$(gs -dNODISPLAY -q -c "(./Cartes/Drops.pdf) (r) file runpdfbegin pdfpagecount = quit")

FL=""

if [ $# -eq 0 ]; then
  echo arguments possibles: Drops, Events, Monstres, Tout
fi

if ((  "$1" == "Drops" ))  || (( "$1" == "Tout" ));then
  echo construction des cartes Drops
  for ((i=1; i<=$PN;i++))
  do
    echo Ajout page $i sur $PN
     gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
      -dFirstPage=$i \
      -dLastPage=$i \
      -sOutputFile=./output/extract$i.pdf \
      ./Cartes/Drops.pdf

      gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
       -sOutputFile=./output/extractrv$i.pdf \
       ./output/extract$i.pdf ./Dos/plancheDosBlancTresors.pdf

      FL="$FL ./output/extractrv$i.pdf"
  done
  gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=./output/DropsRV.pdf $FL
  rm ./output/extract*.pdf
fi

if ((  "$1" == "Events" ))  || (( "$1" == "Tout" ));then
  PN=$(gs -dNODISPLAY -q -c "(./Cartes/Events.pdf) (r) file runpdfbegin pdfpagecount = quit")

  FL=""
  echo construction des cartes events
  for ((i=1; i<=$PN;i++))
  do
    echo Ajout page $i sur $PN
     gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
      -dFirstPage=$i \
      -dLastPage=$i \
      -sOutputFile=./output/extract$i.pdf \
      ./Cartes/Events.pdf

      gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
       -sOutputFile=./output/extractrv$i.pdf \
       ./output/extract$i.pdf ./Dos/plancheDosBlanc.pdf

      FL="$FL ./output/extractrv$i.pdf"
  done
  gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=./output/EventsRV.pdf $FL
  rm ./output/extract*.pdf
fi

if ((  "$1" == "Monstres" ))  || (( "$1" == "Tout" ));then
  PN=$(gs -dNODISPLAY -q -c "(./Cartes/Monstres.pdf) (r) file runpdfbegin pdfpagecount = quit")

  FL=""
  echo construction des cartes monstres
  for ((i=1; i<=$PN;i++))
  do
    echo Ajout page $i sur $PN
     gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
      -dFirstPage=$i \
      -dLastPage=$i \
      -sOutputFile=./output/extract$i.pdf \
      ./Cartes/Monstres.pdf

      gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
       -sOutputFile=./output/extractrv$i.pdf \
       ./output/extract$i.pdf ./Dos/plancheDosBlanc.pdf

      FL="$FL ./output/extractrv$i.pdf"
  done
  gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=./output/MonstresRV.pdf $FL
  rm ./output/extract*.pdf
fi

cp ./Perso/*.pdf ./output/
cp ./Plateaux/*.pdf ./output/
