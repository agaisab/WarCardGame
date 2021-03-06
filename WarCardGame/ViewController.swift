//
//  ViewController.swift
//  WarCardGame
//
//  Created by Ł.B Morapel on 04/03/2021.
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
  
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomize some numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)

        // Update ImageViews abcdddd
        
        leftImageView.image = UIImage(named: "card-\(leftNumber)")
        rightImageView.image = UIImage(named: "card-\(rightNumber)")
        
        //Comparing the random numbers
        
        if leftNumber > rightNumber {
            
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
            //CPU Wins
        }
        else{
            //Tie
        }
    }
    
}

