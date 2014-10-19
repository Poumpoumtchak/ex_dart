library function;


 List assos(List mbrs) { 
     
    List name = new List(); 
    Map data = mbrs.elementAt(0); 
    name.add(data); 
     
    for (int n = 1; n < mbrs.length; n++) { 
      bool test = false; 
      data = mbrs.elementAt(n); 
      String lastName = data["lastName"]; 
      String firstName = data["firstName"]; 
      
    for (int n = 0; n < name.length; n++) { 
      Map values = name.elementAt(n); 
      String last = values["lastName"]; 
      String first = values["firstName"]; 
      
     if (lastName.compareTo(last) < 0 && test == false) { 
        name.insert(n, data); 
       test = true; 
     } 
     else if (lastName.compareTo(last) == 0 && test == false) { 
      
       for (int o = n; o < name.length; o++) { 
         values = name.elementAt(n); 
         last = values["lastName"]; 
         first = values["firstName"];
          
         if (lastName.compareTo(last) == 0 && firstName.compareTo(first) < 0 && test == false) { 
          name.insert(o, data); 
          test = true; 
         } 
          
         else if (lastName.compareTo(last) != 0 && test == false) { 
           name.insert(o, data); 
           test = true; 
         } 
       } 
     } 
    } 
      if (test == false) { 
        name.add(data); 
      } 
    } 
    
    return name; 
  } 
  
  
  List Begin(List members, String letter) { 
     
    List finalList = new List(); 
     
    for (int i = 0; i < members.length; i++) { 
      Map check = members.elementAt(i); 
      String lastName = check["lastName"]; 
      if(lastName.substring(0, 1) == letter) { 
        finalList.add(check); 
      } 
    } 
     
    return finalList; 
  } 

  
  var members = [ 
           {"assocName": "IS", "firstName": "Valentin", "lastName": "Rançon", "email": "vr@gmail.com"}, 
           {"assocName": "CS", "firstName": "Pierre", "lastName": "Rançon", "email": "pr@gmail.com"}, 
           {"assocName": "CS", "firstName": "Maxime", "lastName": "Rançon", "email": "maxran@gmail.com"}, 
           {"assocName": "IS", "firstName": "Hugo", "lastName": "Rançon", "email": "hr@gmail.com"}, 
           {"assocName": "CS", "firstName": "Geoffrey", "lastName": "Bourrel", "email": "Geoffbour@gmail.com"}, 
           {"assocName": "IS", "firstName": "Gaetan", "lastName": "Santorin", "email": "Gasan@gmail.com"}, 
           {"assocName": "CS", "firstName": "Quentin", "lastName": "Lauzeral", "email": "Lauzquent@gmail.com"}, 
           {"assocName": "CS", "firstName": "Camille", "lastName": "Fabre", "email": "CamFab@gmail.com"} 
      ]; 


  printWar(var war){
    for(var o in war){
    print(o);
    }
  }
  