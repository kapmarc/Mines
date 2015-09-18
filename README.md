# Les Mines du roi Goblin
Un jeu pour 2 à 4 joueurs.

## Résumé du jeu
Le jeu est inspiré du jeu sur navigateur [Mountyhall](http://www.mountyhall.com) dans lequel les joueurs jouent des trolls dans des souterrains et reçoivent 6 points d'action toutes les 12 heures pour réaliser certaines action.

Ici: Piocher des cartes, poser des monstres, frapper et encaisser les trésors. Chaque monstre tué va apporter de 
l'expérience au joueur qui pourra améliorer son troll et donc s'attaquer à de plus gros monstres. Le gagnant est le premier joueur à gagner 100 points d'expérience

## Fichiers
Les fichiers permettant d'assembler le jeu sont réalisés dans des formats ouverts:
- Les planches de cartes et les règles sont au format Open Document.
- Les plateaux de joueurs, les plateaux centraux et les planches pour les dos des cartes sont au format svg.
- Les fichiers sont assemblés pour être imprimé au format pdf. 
Le matériel peut donc être édité en utilisant OpenOffice et Inkscape par exemple.

## Structure des fichiers ods
Les fichiers qui servent à construire les planches de cartes sont les suivants:
- Monstres.ods
- Events.ods
- Drops.ods

Ces fichiers contiennent 3 pages et 1 macro. La première page décrit chaque carte, la seconde page reproduit chaque ligne de la première page un nombre de fois égal à ce qui est écrit dans la colonne "nombre de carte" de la première page. La troisième page contient les planches de cartes.
Les planches utilisent les fonctions INDIRECT et ADRESSE pour récupérer les informations sur la page 2. Chaque carte contient un petit nombre dans la première cellule en haut à gauche pour indiquer la ligne correspondante dans la page 2.
Pour changer une carte, il suffit de modifier la page 1 et d'executer la macro associée au fichier pour mettre à jour la page 2. La page 3 se met à jour automatiquement grâce à l'utilisation des formules.

## Assemblage
Il suffit d'imprimer les fichiers pdf. Les marges des fichiers ods sont calculées pour correspondre aux marges des planches de dos (pour une impression recto-verso).
Il y a égelement un script bash appelé CartesRV.sh qui permet de créer les fichiers à imprimer. En particulier, le script va prendre 
Il y a égelement un script bash appelé CartesRV.sh qui permet de créer les fichiers à imprimer. En particulier, le script va directement créer des fichiers pdf recto-verso qu'il suffira d'imprimer. L'ensemble des fichiers est placé dans le répertoire output.
Le jeur nécessite un peu de matériel supplémentaire: Des jetons de couleurs de diamêtre 2,5cm pour marquer les caractéristiques et diverses actions (FA, camouflage, etc...), et des cubes de 1cm de côté pour marquer les pv des monstres, les px et les compétences acquises.

## License
Le materiel est sous license CC BY-NC 4.0 résumée ici: https://creativecommons.org/licenses/by-nc/4.0/
