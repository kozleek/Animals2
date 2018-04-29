//
//  Animals.swift
//  Animals
//
//  Created by Tomáš Musiol on 09.04.18.
//  Copyright © 2018 Naše třída. All rights reserved.
//

import Foundation

class Animal {
  
  let id: String
  let name: String
  let image: String
  let environment: String
  let description: String
  
  init(id: String, name: String, environment: String, description: String) {
    self.id = id
    self.name = name
    self.image = id
    self.environment = environment
    self.description = description
  }
}
