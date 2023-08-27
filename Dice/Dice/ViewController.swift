//
//  ViewController.swift
//  Dice
//
//  Created by Subin Kumar on 21/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var MainView: UIImageView!
    @IBOutlet weak var LogoView: UIImageView!
    @IBOutlet weak var RandomImage1: UIImageView!
    @IBOutlet weak var RandomImage2: UIImageView!
    
    let rImages: [UIImage?] = [                  // let rImages: [UIImage?]
        UIImage(named: "dice1"),
        UIImage(named: "dice2"),
        UIImage(named: "dice3"),
        UIImage(named: "dice4"),
        UIImage(named: "dice5"),
        UIImage(named: "dice6")
    ]
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        getPicture()
    }

    
    @IBAction func RollPressed(_ sender: UIButton) {
        getPicture()
    }
    
    
    func getPicture(){
        RandomImage1.image = rImages.randomElement()!
        RandomImage2.image = rImages.randomElement()!
    }

}

