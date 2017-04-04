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
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let scrollWidth = scrollView.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")  //icon1,icon2,icon3; raw image
            let imageView = UIImageView(image: image)   //image applied to an imageview object
            images.append(imageView)
            
            let newX: CGFloat = scrollWidth / 2 + scrollWidth * CGFloat(x) - 75
            
            //make scrollable
            imageView.frame = CGRect(x: newX, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
            scrollView.addSubview(imageView)
        }
        //don't hide objects outside of scroll view
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: scrollView.frame.width * CGFloat(3), height: view.frame.size.height)
    }
}

