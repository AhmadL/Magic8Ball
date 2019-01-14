//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Ahmad Lakhani on 2018-03-03.
//  Copyright © 2018 AhmadLakhani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNumber : Int = 0

    @IBOutlet weak var ballView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        askMe()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askQuestion(_ sender: UIButton) {
        askMe()
    }
    func askMe() {
        randomNumber = Int(arc4random_uniform(4)) + 1
        ballView.image = UIImage(named: "ball\(randomNumber)")
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        askMe()
    }
}

