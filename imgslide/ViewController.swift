//
//  ViewController.swift
//  imgslide
//
//  Created by D7703_13 on 2019. 3. 26..
//  Copyright © 2019년 personel team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImg: UIImageView!
    var count = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myImg.image = UIImage(named: "frame1.png")
    }

    @IBAction func changeImg(_ sender: Any) {
        count = count + 1
        
        myImg.image = UIImage(named: "frame\(count).png")
        
        if count == 5{
            count = 0;
        }
    }
    
}

