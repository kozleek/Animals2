//
//  Animals.swift
//  Animals
//
//  Created by Tomáš Musiol on 09.04.18.
//  Copyright © 2018 Naše třída. All rights reserved.
//

import Foundation

class Animal {
  
  enum Environment: String {
    case farm = "farm"
    case field = "field"
    case jungle = "jungle"
    case jungleRiver = "jungleRiver"
    case forest = "forest"
    case sea = "sea"
    case river = "river"
    case savana = "savana"
  }
  
  let name: String
  let image: String
  let environment: Environment
  let description: String
  
  init(name: String, image: String, environment: Environment, description: String) {
    self.name = name
    self.image = image
    self.environment = environment
    self.description = description
  }
}
