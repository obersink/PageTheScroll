 //
//  ViewController.swift
//  PageTheScroll
//
//  Created by Simon Zhen on 4/4/17.
//  Copyright © 2017 Simon Zhen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")  //icon1,icon2,icon3; raw image
            let imageView = UIImageView(image: image)   //image applied to an imageview object
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            newX = view.frame.midX + view.frame.size.width * CGFloat(x)
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 75, y: (view.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        print("Count: \(images.count)")
    }



}

