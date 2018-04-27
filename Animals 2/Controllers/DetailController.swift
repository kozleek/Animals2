//
//  DetailController.swift
//  Animals 2
//
//  Created by Tomáš Musiol on 26.04.18.
//  Copyright © 2018 cistokocky. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

  @IBOutlet weak var detailImage: UIImageView!
  
  var animal: Animal!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // ---------------------------------------
    // Zpracování dat ze seque
    // ---------------------------------------
    
    detailImage.image = UIImage(named: animal.environment.rawValue)
  }

}
