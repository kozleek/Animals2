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
  var scrollViewPosition: Int!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // zpracovani predanych informaci ze segue
    detailImage.image = UIImage(named: animal.environment.rawValue)
  }

}
