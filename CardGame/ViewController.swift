//
//  ViewController.swift
//  CardGame
//
//  Created by NIGHTINGALE on 6/18/20.
//  Copyright © 2020 NIGHTINGALE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
   
    @IBOutlet weak var leftScorelabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    // Score Keep
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        
        // Generate random number
        let leftNumber = Int.random(in: 2...14)
        
        
        let rightNumber = Int.random(in: 2...14)
        
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        
        
        if leftNumber > rightNumber {
            
            // Left side wins
            leftScore += 1
            
            
            
            // Access the UI label, text, convert int to string
            leftScorelabel.text = String(leftScore)
            
            
        }
        else if leftNumber < rightNumber {
            
            // Right side wins
            rightScore += 1
            
            // Access the UI Label
            rightScoreLabel.text = String(rightScore)
            
        }
        
        
        
    }


}

