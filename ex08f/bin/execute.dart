import 'ex08f.dart';

void ex08f_Q1(){ 
  

  var result = ('${assos(members)}\n');
  var letter = "L";
  var result_2 = Begin(members, ('${letter}'));
  
  print('QUESTION_1:'); 
            
  print('Answer:\n\n$result'); 
  
  
  print('Members whose start with this letter : [ $letter ]') ;
  print ('Answer: $result_2');

     
}


void ex08f_Q2(){
  
  print('QUESTION_2');
  
  test(var firstName, var lastName, var members){
     for(var l in members){
        if(l['firstName'] == firstName && l['lastName'] == lastName)
        return true;
     }
     return false;
   }
  
   add(var assocName, var firstName, var lastName, var email, var members){
       members.add({
                    'assocName': assocName,
                    'firstName': firstName,
                    'lastName': lastName,
                    'email': email, 
                  });

     name(var members){
      members.sort((a, b) => a['lastName'].compareTo(b['firstName']));
      print('Add');
      printWar(members); 
     }   
     name(members);   
   } 
     add('CS', 'Coffin', 'Théo', 'Cofthé@gmail.com', members); 
  
   rem(var firstName, var lastName, var email, var members){     
      for(var n = 0; n < members.length; n++){        
       if(members[n]['firstName'] == firstName && members[n]['lastName'] == lastName && members[n]['email'] == email){
         members.removeAt(n);
       }
      }
 
     name(var members){
      members.sort((a, b) => a['lastName'].compareTo(b['firstName']));
      print('Remove'); 
      printWar(members); 
     }    
     name(members);
   } 
     rem('Geoffrey', 'Bourrel', 'Geoffbour@gmail.com', members);
   
   update(var assocName, var firstName, var lastName, var email, var members){
      for(var n = 0; n < members.length; n++){
       if(members[n]['firstName'] == firstName && members[n]['lastName'] == lastName){
           members[n]['assocName'] = assocName;
           members[n]['firstName'] = firstName;
           members[n]['lastName'] = lastName;
           members[n]['email'] = email; 
       }
      }
     
     
     name(var members){
       members.sort((a, b) => a['lastName'].compareTo(b['firstName']));
       print('Update'); 
       printWar(members);
     }
     name(members);
   }

   update('IS', 'Hugo', 'Rançon', 'hulpox@hotmail.com', members);
  
  
}

main() {
  ex08f_Q1();  
  ex08f_Q2();  
 // Sources : https://github.com/dzenanr/association
  // https://github.com/leduy10/ex08/blob/master/bin/functions.dart
  // https://github.com/dzenanr/association_members
  
}