//
//  AnimalBank.swift
//  Animal
//
//  Created by Tomáš Musiol on 09.04.18.
//  Copyright © 2018 Naše třída. All rights reserved.
//

import Foundation

class AnimalsBank {
  
  var list = [Animal]()
  
  init() {
    
    self.list.append(Animal(id: "dog", name: "Pes", environment: .farm, description: ""))
    self.list.append(Animal(id: "jaguar", name: "Jaguar", environment: .jungle, description: "Jaguár žije v džungli"))
    self.list.append(Animal(id: "elephant", name: "Slon", environment: .savana, description: "Slon žije v savaně"))
    self.list.append(Animal(id: "cat", name: "Kočka", environment: .farm, description: "Kočka žije na statku"))
    self.list.append(Animal(id: "owl", name: "Sova", environment: .forest, description: "Sova žije v lese"))
    self.list.append(Animal(id: "parrot", name: "Papoušek", environment: .jungle, description: "Papoušek žije v džungli"))
    self.list.append(Animal(id: "rooster", name: "Kohout", environment: .farm, description: "Slepice žije na statku"))
    self.list.append(Animal(id: "rabbit", name: "Králík", environment: .field, description: "Králík žije na louce"))
    self.list.append(Animal(id: "leo", name: "Lev", environment: .savana, description: "Lev žije v savaně"))
    self.list.append(Animal(id: "gorrila", name: "Gorila", environment: .jungle, description: "Gorila žije v džungli"))
    self.list.append(Animal(id: "snake", name: "Had", environment: .jungle, description: "Had žije v džungli"))
    self.list.append(Animal(id: "lamb", name: "Jehně", environment: .field, description: "Jehně žije na poli"))
    self.list.append(Animal(id: "fox", name: "Liška", environment: .forest, description: "Liška žije v lese"))
    self.list.append(Animal(id: "giraffe", name: "Žirafa", environment: .savana, description: "Žirafa žije v savaně"))
    self.list.append(Animal(id: "horse", name: "Kůň", environment: .farm, description: "Kůň žije na statku"))
    self.list.append(Animal(id: "squirrel", name: "Veverka", environment: .forest, description: "Veverka žije v lese"))
    self.list.append(Animal(id: "deer", name: "Jelen", environment: .forest, description: "Jelen žije v lese"))
    self.list.append(Animal(id: "crocodile", name: "Krokodýl", environment: .jungleRiver, description: "Krokodýl žije u řeky"))
    self.list.append(Animal(id: "mole", name: "Krtek", environment: .field, description: "Krtek žije na louce"))
    self.list.append(Animal(id: "panda", name: "Panda", environment: .forest, description: "Panda žije na stromech"))
    self.list.append(Animal(id: "cow", name: "Kráva", environment: .farm, description: "Kráva žije na statku"))
    self.list.append(Animal(id: "bear", name: "Medvěd", environment: .forest, description: "Medvěd žije v lese"))
        
  }
}
