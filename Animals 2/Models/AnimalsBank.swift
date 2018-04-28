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
    
    self.list.append(Animal(name: "Pes", image: "dog", environment: .farm, description: ""))
    self.list.append(Animal(name: "Jaguar", image: "jaguar", environment: .jungle, description: "Jaguár žije v džungli"))
    self.list.append(Animal(name: "Slon", image: "elephant", environment: .savana, description: "Slon žije v savaně"))
    self.list.append(Animal(name: "Kočka", image: "cat", environment: .farm, description: "Kočka žije na statku"))
    self.list.append(Animal(name: "Sova", image: "owl", environment: .forest, description: "Sova žije v lese"))
    self.list.append(Animal(name: "Papoušek", image: "parrot", environment: .jungle, description: "Papoušek žije v džungli"))
    self.list.append(Animal(name: "Slepice", image: "chicken", environment: .farm, description: "Slepice žije na statku"))
    self.list.append(Animal(name: "Králík", image: "rabbit", environment: .field, description: "Králík žije na louce"))
    self.list.append(Animal(name: "Lev", image: "leo", environment: .savana, description: "Lev žije v savaně"))
    self.list.append(Animal(name: "Gorila", image: "gorilla", environment: .jungle, description: "Gorila žije v džungli"))
    self.list.append(Animal(name: "Had", image: "snake", environment: .jungle, description: "Had žije v džungli"))
    self.list.append(Animal(name: "Jehně", image: "lamb", environment: .field, description: "Jehně žije na poli"))
    self.list.append(Animal(name: "Liška", image: "fox", environment: .forest, description: "Liška žije v lese"))
    self.list.append(Animal(name: "Žirafa", image: "giraffe", environment: .savana, description: "Žirafa žije v savaně"))
    self.list.append(Animal(name: "Kůň", image: "horse", environment: .farm, description: "Kůň žije na statku"))
    self.list.append(Animal(name: "Veverka", image: "squirel", environment: .forest, description: "Veverka žije v lese"))
    self.list.append(Animal(name: "Jelen", image: "deer", environment: .forest, description: "Jelen žije v lese"))
    self.list.append(Animal(name: "Krokodýl", image: "crocodile", environment: .jungleRiver, description: "Krokodýl žije u řeky"))
    self.list.append(Animal(name: "Krtek", image: "mole", environment: .field, description: "Krtek žije na louce"))
    self.list.append(Animal(name: "Panda", image: "panda", environment: .forest, description: "Panda žije na stromech"))
    self.list.append(Animal(name: "Kráva", image: "cow", environment: .farm, description: "Kráva žije na statku"))
    self.list.append(Animal(name: "Medvěd", image: "bear", environment: .forest, description: "Medvěd žije v lese"))
        
  }
}
