import 'ex06_new.dart' ;
import 'package:collection/equality.dart' ;
main(){

// Question 1 
 
  print (test('123456789987654321'));
  
  
  // Question 2 // Remplir au format Date la plus récente : aaaa/mm/dd Date la plus ancienne : aaaa/mm/dd
  
  print (date(2014,10 ,23 ,1994 , 10 ,23)) ; 
  
  // Question 3 // 
  
  print(letter(100)) ;
 
  // Question 4 // 
   
    print(Mainlist(['Tomate', 'Pomme','Ballon', 'Sable','Kaléidoscope', 'Constitutionnel', 'Pêche', 'Yo', 'Réussite','Titanic', 'Guadeloupe' , 'Bol' , 'Valeur']));
  
  // Question 5 // 
    
    List players = [['Ayew', 'Gignac'], ['Zlatan', 'Cavani'], ['Ronaldo', 'Bale'], ['Messi', 'Xavi'], ['Rooney', 'Van Persie'], ['Gourcuff', 'Juninho']];
    List clubs = ['Olympique de Marseille', 'Paris Saint Germain', 'Real de Madrid', 'Barcelone', 'Manchester United', 'Lyon'];
   
  print (classified(players, clubs));
  
}


// Sources : https://pub.dartlang.org/packages/collection
// http://soat.developpez.com/tutoriels/dart/dart-manuel-reference/
// https://api.dartlang.org