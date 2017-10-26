//
//  ViewController.swift
//  YourCupple
//
//  Created by admin on 09/10/2017.
//  Copyright © 2017 MuhammadAamir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomBoy:Int = 0
    var randomGirl:Int = 0
    
    @IBOutlet weak var GirlImage: UIImageView!
    @IBOutlet weak var BoyImage: UIImageView!
    var GirlArray = ["g1","g2","g3","g4","g5"]
    var BoyArray = ["b1","b2","b3","b4","b5"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateImage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateImage(){
        randomBoy = Int(arc4random_uniform(5))
        randomGirl = Int(arc4random_uniform(5))
        
        GirlImage.image = UIImage(named: GirlArray[randomGirl])
        BoyImage.image = UIImage(named: BoyArray[randomBoy])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImage()
    }


}

