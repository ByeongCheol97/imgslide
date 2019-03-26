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
    @IBOutlet weak var mylabel: UILabel!
    
    var count = 1
    var direction = true //up
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myImg.image = UIImage(named: "frame1.png")
        mylabel.text = "frame1.png"
    }

    @IBAction func changeImg(_ sender: Any) {
        if count == 5 {
            direction = false
        } else if count == 1 {
            direction = true
        }
        if direction == true {
            count += 1
        } else {
            count -= 1
        }
        
        myImg.image = UIImage(named: "frame\(count).png")
        mylabel.text = "frame\(count).png"
    }
    
}

