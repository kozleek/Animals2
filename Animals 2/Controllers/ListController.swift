//
//  ListController.swift
//  Animals 2
//
//  Created by Tomáš Musiol on 27.04.18.
//  Copyright © 2018 cistokocky. All rights reserved.
//

import UIKit

class ListController: UIViewController {

  @IBOutlet weak var collectionView: UICollectionView!
  
  override func viewDidLoad() {
      super.viewDidLoad()
    
      for index in 0...20 {
        print(index)
      }
    
    }

}
