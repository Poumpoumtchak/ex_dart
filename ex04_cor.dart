import 'dart:math';

String fibonacciIteration(int t) {
  int a = 0, b = 1, f = 1, n = 1;
  String result = '0 1';
  while (n < t) {
    f = a + b;
    result = '$result $f ';
    a = b;
    b = f;
    n = n + 1;
  }
  return result;
}

void main () {
  // EXERCICE 4 

  // Question 1
  int count = 9;
  String sequence = fibonacciIteration(count);
  print('Fibonacci with iteration: ${count + 1} numbers sequence');
  print(sequence);
 
  // Question 2 // Point Centre x = 400 y = 300  Angle : 45 degrés Longueur : 160 
  var x = 400 ;
  var y = 300 ;
  Point centre = new Point (x , y);
  var degree = -45 ;
  var radians = degree * (PI / 180);
  
  var cotopo = x + (cos(radians) * 160).abs() ; // 
  var cotadj = y + (sin(radians) * 160).abs() ; //
  
  print ( ''' 

Question 2 :
Point A : $centre 
Point B : x = $cotopo y = $cotadj 
  ''') ; 
 
  // Question 3 
  var now = new DateTime.now() ; // Date d'aujourd'hui
  var birthday = new DateTime.utc(1994, 10, 23); // Date d'anniversaire
 
  var duration = now.difference(birthday); // Différence entre les deux dates
  duration = duration.inDays ; // Date en jours
 
  var daysinyears = duration/365.25 ; // Jours => Années ( Nombre décimal )
  var year1 = daysinyears.truncate(); // Année ( Nombre entier )/ Permet de calculer le nombre de mois

  var daysinmonth = (daysinyears*12); // Jours => Mois ( Nombre Décimal )
  var month1 = daysinmonth.truncate(); // Mois ( Nombre entier )/ Permet de calculer le nombre de mois 
  var jourrest = daysinmonth - month1 ; // Permet de calculer le nombre de jours restant
   
  var month = month1 - (year1*12); // Calcul du nombre de mois 
  var day = jourrest*( 365.25/12); // Calcul du nombre de jours 
  var day1 = day.truncate() ; // Nombre de jours ( Nombre entier ) 

  print ('''

Question 3 :
  ''');
  print ('$duration days');
  print ('$daysinmonth month');
  print ('$daysinyears years');
  print ('I am $year1 years $month month $day1 days old');

  // Question 4 
  // Calculate a compound interest each year for 5 years,
  // for the initial investment of 1000$ with the fixed interest rate of 4.8.

  var initialInvestment = 1000 ;
  var interestRate = 4.8 ; 
  var compound = initialInvestment*(1+(interestRate/100)); // 1
  print('''

Question 4 : 
First year we earn ${compound-initialInvestment} dollars
  ''');

  var compound1 = compound*(1+(interestRate/100)); // 2
  print('Second year we earn ${compound1-compound} dollars');
  
  var compound2 = compound1*(1+(interestRate/100)); // 3
  print('Third year we earn ${compound2-compound1} dollars');
  
  var compound3 = compound2*(1+(interestRate/100)); // 4
  print('Fourth year we earn ${compound3-compound2} dollars');
  
  var compound4 = compound3*(1+(interestRate/100)); // 5
  print('''Fifth year we earn ${compound4-compound3} dollars

In total we have $compound4 dollars 
  ''');
              
 // Question 5 // Calculate the first 16 terms of the 8 times table (Google: 8 times table).
              
  print ('''
Question 5 : 
            ''') ;
for ( var i=1 ; i<=16 ; i++ ){ 
  var multipl = i*8 ;


  print ('$i * 8 = $multipl'); 
}
 
    
    
// Sources : 
// http://soat.developpez.com/tutoriels/dart/dart-manuel-reference/
// https://www.dartlang.org/docs/dart-up-and-running/
// http://tutorielsinformatique.wordpress.com/2011/11/05/dart-mathematique/
  

  }
