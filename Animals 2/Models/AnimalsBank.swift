//
//  AnimalBank.swift
//  Animal
//
//  Created by Tomáš Musiol on 09.04.18.
//  Copyright © 2018 Naše třída. All rights reserved.
//

import Foundation
import SwiftyJSON

class AnimalsBank {
  
  var list = [Animal]()
  
  init() {
    
    // ---------------------------------------
    // Načtení dat z JSON souboru
    // ---------------------------------------
    
    if let path = Bundle.main.path(forResource: "Animals", ofType: "json") {
      do {
        let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
        let jsonObj = try JSON(data: data)
        let jsonAnimals = jsonObj["animals"]
        
        // prochazeni vsech zaznamu JSON souboru
        for index in 0..<jsonAnimals.count{
          
          // inicializace tridy Animal
          let animal = Animal(
            id: jsonAnimals[index]["id"].string!,
            name: jsonAnimals[index]["name"].string!,
            environment: jsonAnimals[index]["environment"].string!,
            description: jsonAnimals[index]["description"].string!
          )
          
          // pridani do pole zvirat
          self.list.append(animal)
        }
        
      } catch let error {
        print("parse error: \(error.localizedDescription)")
      }
    } else {
      print("Invalid filename/path.")
    }
    
  }
}
