//
//  ViewController.swift
//  game-tutorial
//
//  Created by Nirmal Koirala on 29/06/2022.
//

import UIKit

class ViewController: UIViewController {
    var previousCardValue = 0
    var currentCardValue = 0
    var score = 0

    @IBOutlet weak var CardLabel: UILabel!
    @IBOutlet weak var HighButton: UIButton!
    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var LowButton: UIButton!
    @IBOutlet weak var cardImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomizeCard()
                
            }

    func randomizeCard() {
        previousCardValue = currentCardValue
        currentCardValue = Int.random(in: 1 ... 13)
        cardImageView.image = UIImage(named: String(currentCardValue))
    }

    func increaseScore() {
            score = score + 1
            ScoreLabel.text = "Score: " + String(score)
        }

    func gameOver() {
            ScoreLabel.text = "Game over!"
            score = 0
        }

    @IBAction func LowButtonPressed(_ sender: Any) {
            randomizeCard()
            if currentCardValue < previousCardValue {
                increaseScore()
            } else {
                gameOver()
            }
        }

    @IBAction func HighButtonPressed(_ sender: Any) {
            randomizeCard()
            if currentCardValue >= previousCardValue {
                increaseScore()
            } else {
                gameOver()
            }
        }
    
    }


