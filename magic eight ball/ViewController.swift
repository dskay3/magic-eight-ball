//
//  ViewController.swift
//  magic eight ball
//
//  Created by Daniel Kim on 3/30/18.
//  Copyright © 2018 Daniel Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArr = ["answer yes ball", "ask me again ball", "no ball", "no idea ball", "yes ball"]
    var ballIndex : Int = 1
    
    @IBOutlet weak var crystalBallImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        generateAnswer()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        generateAnswer()
    }
    
    // generates a new ball view image
    func generateAnswer() {
        ballIndex = Int(arc4random_uniform(5))
        crystalBallImage.image = UIImage(named: ballArr[ballIndex])
    }
}

