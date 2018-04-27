//
//  ListController.swift
//  Animals 2
//
//  Created by Tomáš Musiol on 27.04.18.
//  Copyright © 2018 cistokocky. All rights reserved.
//

import UIKit

class ListController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{

  @IBOutlet weak var collectionView: UICollectionView!
  
  var animalsList = [Animal]()
  var currentCellIndex: Int = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  // ---------------------------------------
  // Velikost collectionView
  // ---------------------------------------
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return animalsList.count
  }
  
  // ---------------------------------------
  // Definování buňky pro collectionView
  // ---------------------------------------
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ListCell", for: indexPath) as! ListCellController
    cell.listCellButton.tag = indexPath.row
    cell.listCellButton.setTitle(animalsList[indexPath.row].name, for: .normal)
    cell.listCellImage.image = UIImage(named: animalsList[indexPath.row].image)
    cell.listCellButton.addTarget(self, action: #selector(buttonTappedInCollectionViewCell), for: .touchUpInside)
    
    return cell
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    // preneseni dat do sceny
    if segue.identifier == "ListToScene" {
      if let scene = segue.destination as? SceneController {
        scene.currentScreenIndex = currentCellIndex
      }
    }
  }
  
  @objc func buttonTappedInCollectionViewCell(sender: UIButton) {
    currentCellIndex = sender.tag
    self.performSegue(withIdentifier: "ListToScene", sender: nil)
  }
}
