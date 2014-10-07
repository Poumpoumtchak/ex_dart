library define_functions ;

import 'package:collection/equality.dart' ;
var ok = 'ok' ;

Function test ( test1 ) {
 var fal =(){ 
   print ( '$test1 is not a palindrome');};
   var tru =(){ 
     print ( '$test1 is a palindrome');};
     
     
     
        test1 = test1.toLowerCase().split('');
        var test2 = test1.reversed;

         if (const IterableEquality().equals(test1,test2)) {
              return tru () ;
              
         } else {
                      return fal () ;
             
        } 
}

// Question 1 // Je n'ai pas réussi à l'obtenir de cette façon si vous pouviez m'éclairer 
/*
Function test ( test1 ) {
 var fal =(){ 
   print ( '$test1 is not a palindrome');};
   var tru =(){ 
     print ( '$test1 is a palindrome');};
   
var palindrome = test1.split('');
var palindrome2 = test1.split('').reversed ;

var i = 0 ;
var len = palindrome.length - 1 ; 
while (  i < len ){

  if (palindrome[i]!= palindrome2[len]){ 
                                        return fal ;
                                      }
  i = i + 1;
  len = len - 1 ;

  }
return tru ;

  
  }
main() {

  print (test('radar'));
  }


*/


// Question 2 //
  date ( c, d, e ,f ,g, h){
    

  var a = new DateTime(c, d, e); 
   var b = new DateTime(f, g, h);
var duration = a.difference(b);

duration = duration.inDays;

print(duration);
}

// Question 3 // 

  letter (x) {
    num position = 0 ;
    Map mark = new Map() ;
    mark ['Error'] = '100 to inf and -inf to 0' ;
    mark ['A+'] = '95 to 100' ; 
    mark ['A-'] = '91.5 to 94.99' ;
    mark ['A'] = '88 to 91.49' ;
    mark ['B+'] = '84.5 to 87.99' ;
    mark ['B'] = '81 to 84.49';
    mark ['B-'] = '77.5 to 80.99';
    mark ['C+'] = '74 to 77.49' ;
    mark ['C'] = '70.5 to 73.99' ;
    mark ['C-'] = '67 to 70.49' ;
    mark ['D+'] = '63.5 to 66.99';
    mark ['D'] = '60 to 63.49' ;
    mark ['E'] = '0 to 59.99' ;
   

    if  (x > 100 || x < 0)            {position = 0;}
    else if  (x >= 95   && x <= 100)   {position = 1;}
    else if (x >= 91.5 && x <= 94.99) {position = 3;}
    else if (x >= 88   && x <= 91.49) {position = 4;}
    else if (x >= 84.5 && x <= 87.99) {position = 5;}
    else if (x >= 81   && x <= 84.49) {position = 6;}
    else if (x >= 77.5 && x <= 80.99) {position = 7;}
    else if (x >= 74   && x <= 77.49) {position = 8;}
    else if (x >= 70.5 && x <= 73.99) {position = 9;}
    else if (x >= 67   && x <= 70.49) {position = 10;}
    else if (x >= 63.5 && x <= 66.99) {position = 11;}
    else if (x >= 60   && x <= 63.49) {position = 12;}
    else if (x >= 0    && x <= 59.99) {position = 13;}
     
    var grade = mark.keys.toList (); 
    var note = grade[position];
    return 'The grade converted is $note';
    }
  
 // Question 4 //  
  

  
    List Mainlist (List Classified) {
    List Shorter = new List ();
    List Longer = new List ();
    List H_letters = new List ();
    List Lastlist = new List ();
         Lastlist.add(Shorter);
         Lastlist.add(Longer);
         Lastlist.add(H_letters);

    for (var n = 0; n < Classified.length; n++) {
     var inc = Classified[n].length;
     if (inc < 8 ) {Shorter.add(Classified[n]);}
     else if (inc == 8 ) {H_letters.add(Classified[n]);}
     else if (inc > 8 ) {Longer.add(Classified[n]);}
    } 
    
  return Lastlist ; 


  }
  
    // Question 5 // 
    
    classified (List players, List clubs) {
          var map = new Map();
          for (var i = 0; i < clubs.length ; i++) {
            map [clubs[i]] = players[i];
          }
          for (var x in map.keys) {
            print('$x : ${map[x]}');
          }
        }
    
    
    





