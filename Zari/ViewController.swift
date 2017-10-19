//
//  ViewController.swift
//  Zari
//
//  Created by Adriat Ahmeti on 10/18/17.
//  Copyright © 2017 Adriat Ahmeti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fotoZari1: UIImageView!
    @IBOutlet weak var fotoZari2: UIImageView!
    
    var zaret = ["zari1", "zari2", "zari3", "zari4", "zari5", "zari6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func playGame(){
        var randomNumber1 = Int(arc4random_uniform(UInt32(zaret.count)))
        var randomNumber2 = Int(arc4random_uniform(UInt32(zaret.count)))
        var zari1M = zaret[randomNumber1]
        var zari2M = zaret[randomNumber2]
        fotoZari1.image = UIImage(named: zari1M)
        fotoZari2.image = UIImage(named: zari2M)
    }
    
    
    @IBAction func buPlay(_ sender: Any) {
        playGame()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == UIEventSubtype.motionShake {
            playGame()
        }
    }
    
}

