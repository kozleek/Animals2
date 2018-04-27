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
  @IBOutlet weak var detailView: UIView!
  @IBOutlet weak var detailLabel: UILabel!
  
  var animal: Animal!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // ---------------------------------------
    // Zpracování dat ze seque
    // ---------------------------------------
    
    detailImage.image = UIImage(named: animal.environment.rawValue)
    
    if( animal.description != "" ){
      detailView.isHidden = false
      detailView.layer.cornerRadius = 30
      detailLabel.text = animal.description
    }
  }

}
