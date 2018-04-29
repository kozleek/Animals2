//
//  SceneController.swift
//  Animals 2
//
//  Created by Tomáš Musiol on 26.04.18.
//  Copyright © 2018 cistokocky. All rights reserved.
//

import UIKit

class SceneController: UIViewController, UIScrollViewDelegate {

  var screenSize: CGRect = UIScreen.main.bounds
  var animals = AnimalsBank()
  var currentAnimal: Animal!
  var currentScreenIndex: Int = 0
  
  @IBOutlet weak var scrollView: UIScrollView! {
    didSet {
      scrollView.contentSize = CGSize(width: CGFloat(animals.list.count) * screenSize.width, height: 0)
      scrollView.delegate = self
    }
  }
  
  @IBOutlet weak var pageControl: UIPageControl! {
    didSet {
      pageControl.numberOfPages = animals.list.count
      pageControl.currentPage = currentScreenIndex
    }
  }
  
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
    
    showPosition(position: currentScreenIndex)
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
  // Zobrazení konkrétního snímku
  // ---------------------------------------
  
  func showPosition(position: Int){
    scrollView.setContentOffset(CGPoint(x: screenSize.width * CGFloat(position), y: 0), animated: true)
    pageControl.currentPage = position
    currentAnimal = animals.list[position]
  }
  
  // ---------------------------------------
  // Připrava dat pro předání přes segue
  // ---------------------------------------
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    // preneseni dat do detailu
    if segue.identifier == "SceneToDetail" {
      if let detail = segue.destination as? DetailController {
        detail.animal = currentAnimal
      }
    }
    
    // preneseni dat do seznamu zvirat
    if segue.identifier == "SceneToList" {
      if let list = segue.destination as? ListController {
        list.animalsList = animals.list
      }
    }
  }

  // ---------------------------------------
  // Spuštění segue pro přechod do detailu
  // ---------------------------------------
  
  @IBAction func tapOpenAction(_ sender: UITapGestureRecognizer) {
    performSegue(withIdentifier: "SceneToDetail", sender: nil)
  }

  @IBAction func pinchOpenAction(_ sender: UIPinchGestureRecognizer) {
    if (sender.state == .ended) && (sender.scale < 1){
      performSegue(withIdentifier: "SceneToList", sender: nil)
    }
  }
  
  // ---------------------------------------
  // Unwind segue - neprepise puvodni stav
  // zatim Magic :))
  // ---------------------------------------

  
  @IBAction func unwindSegue(_ sender: UIStoryboardSegue) {    
  }
  
}
