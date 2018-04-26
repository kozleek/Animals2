//
//  SceneController.swift
//  Animals 2
//
//  Created by Tomáš Musiol on 26.04.18.
//  Copyright © 2018 cistokocky. All rights reserved.
//

import UIKit

class SceneController: UIViewController, UIScrollViewDelegate {

  @IBOutlet weak var scrollView: UIScrollView!
  @IBOutlet weak var pageControl: UIPageControl!
  
  var screenSize: CGRect = UIScreen.main.bounds
  
  var animals = AnimalsBank()
  var currentAnimal: Animal!
  var currentScreenIndex: Int = 0
  
  // ---------------------------------------
  // Hlavni funkce
  // ---------------------------------------
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    currentAnimal = animals.list[0]
  
    for index in 0..<animals.list.count {
      
      let scrollItem = UIView(frame: CGRect(x: CGFloat(index) * screenSize.width, y: 0, width: screenSize.width, height: screenSize.height))
      scrollItem.backgroundColor = UIColor.black
      
      let scrollItemImage = UIImageView(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height))
      scrollItemImage.image = UIImage(named: animals.list[index].image)
      scrollItemImage.isUserInteractionEnabled = true
      
      scrollItem.addSubview(scrollItemImage)
      scrollView.addSubview(scrollItem)
      
    }
    
    scrollView.contentSize = CGSize(width: CGFloat(animals.list.count) * screenSize.width, height: 0)
    scrollView.delegate = self
    
    pageControl.numberOfPages = animals.list.count
    pageControl.currentPage = 0        
  }
  
  // ---------------------------------------
  // Připrava dat pro předání přes segue
  // ---------------------------------------
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "SceneToDetail" {
      if let detail = segue.destination as? DetailController {
        detail.animal = currentAnimal
        detail.scrollViewPosition = currentScreenIndex
      }
    }
  }
  
  // ---------------------------------------
  // ScrollView - vyhodnocení stavu
  // ---------------------------------------
  
  func scrollViewDidEndDecelerating(_ sender: UIScrollView){
    currentScreenIndex = Int(sender.contentOffset.x / screenSize.width)
    pageControl.currentPage = currentScreenIndex
    currentAnimal = animals.list[currentScreenIndex]
  }

  // ---------------------------------------
  // Spuštění segue pro přechod do detailu
  // ---------------------------------------
  
  @IBAction func tapOpenAction(_ sender: UITapGestureRecognizer) {
    performSegue(withIdentifier: "SceneToDetail", sender: nil)
  }

  // ---------------------------------------
  // Unwind segue - neprepise puvodni stav
  // zatim Magic :))
  // ---------------------------------------

  
  @IBAction func unwindSegue(_ sender: UIStoryboardSegue) {
    print(currentScreenIndex)
  }
  
}
