//
//  Animals.swift
//  Animals
//
//  Created by Tomáš Musiol on 09.04.18.
//  Copyright © 2018 Naše třída. All rights reserved.
//

import Foundation

class Animal {
  
  enum Environment {
    case farm
    case jungle
    case jungleRiver
    case forest
    case sea
    case river
  }
  
  let name: String
  let image: String
  let environment: Environment
  
  init(name: String, image: String, environment: Environment) {
    self.name = name
    self.image = image
    self.environment = environment
  }
}
