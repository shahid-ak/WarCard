//
//  ViewController.swift
//  WarCard
//
//  Created by ShahidAK on 08/01/21.
//  Copyright © 2021 ShahidAK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber{
            leftScore+=1
            leftScoreLabel.text = String(leftScore)
        }
        
        else if rightNumber > leftNumber{
            rightScore+=1
            rightScoreLabel.text = String(rightScore)

        }
    }
    @IBAction func restFunction(_ sender: Any) {
        leftScore=0
        leftScoreLabel.text = String(leftScore)
        
        rightScore=0
        rightScoreLabel.text = String(rightScore)
        
    }
    


}

