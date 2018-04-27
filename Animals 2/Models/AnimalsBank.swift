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
    
    self.list.append(Animal(name: "Pes", image: "dog", environment: .farm))
    self.list.append(Animal(name: "Jaguar", image: "jaguar", environment: .jungle))
    self.list.append(Animal(name: "Slon", image: "elephant", environment: .savana))
    self.list.append(Animal(name: "Kočka", image: "cat", environment: .farm))
    self.list.append(Animal(name: "Sova", image: "owl", environment: .forest))
    self.list.append(Animal(name: "Papoušek", image: "parrot", environment: .jungle))
    self.list.append(Animal(name: "Slepice", image: "chicken", environment: .farm))
    self.list.append(Animal(name: "Králík", image: "rabbit", environment: .field))
    self.list.append(Animal(name: "Lev", image: "leo", environment: .savana))
    self.list.append(Animal(name: "Gorila", image: "gorilla", environment: .jungle))
    self.list.append(Animal(name: "Jehně", image: "lamb", environment: .field))
    self.list.append(Animal(name: "Liška", image: "fox", environment: .forest))
    self.list.append(Animal(name: "Žirafa", image: "giraffe", environment: .jungle))
    self.list.append(Animal(name: "Kobyla", image: "horse", environment: .field))
    self.list.append(Animal(name: "Veverka", image: "squirel", environment: .forest))
    self.list.append(Animal(name: "Jelen", image: "deer", environment: .forest))
    self.list.append(Animal(name: "Krokodýl", image: "crocodile", environment: .jungleRiver))
        
  }
}
