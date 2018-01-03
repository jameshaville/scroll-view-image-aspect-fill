//
//  ViewController.swift
//  GrowingImageWithScroll
//
//  Created by James Haville on 23/12/2017.
//  Copyright © 2017 James Haville. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//  @IBOutlet weak var imageViewContainerView: UIView!
  @IBOutlet weak var verticalScrollView: UIScrollView!
  @IBOutlet weak var horizontalScrollView: UIScrollView!
  
  @IBOutlet weak var topView: UIView!
  @IBOutlet weak var imagesHolderView: UIView!
  var imageViewOne = UIImageView()
  override func viewDidLoad() {
    super.viewDidLoad()
  
    verticalScrollView.delegate = self
//    verticalScrollView.contentInsetAdjustmentBehavior = .never
//    verticalScrollView.alwaysBounceVertical = false
    verticalScrollView.contentInset = UIEdgeInsets(top: view.frame.width, left: 0, bottom: 0, right: 0)
    imageViewOne.image = UIImage(named: "profile-image")!
    
    imageViewOne.translatesAutoresizingMaskIntoConstraints = false
    
    imagesHolderView.addSubview(imageViewOne)
    imageViewOne.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    imageViewOne.leftAnchor.constraint(equalTo: imagesHolderView.leftAnchor).isActive = true
    imageViewOne.rightAnchor.constraint(equalTo: imagesHolderView.rightAnchor).isActive = true
    imageViewOne.bottomAnchor.constraint(equalTo: topView.topAnchor).isActive = true
  
    imageViewOne.contentMode = .scaleAspectFill
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

extension ViewController: UIScrollViewDelegate {
  func scrollViewDidScroll(_ scrollView: UIScrollView) {
    if scrollView.contentOffset.y < -view.frame.width {}
  }
}
