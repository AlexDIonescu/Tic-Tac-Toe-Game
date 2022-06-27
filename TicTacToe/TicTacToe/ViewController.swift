//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Ionescu on 20.06.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        playerTurnLabel.text = "X turn"
    }
    var player = 0
    var fullBoard = 0
    var winner: String = ""
    func playerCheck() -> String{
        if player % 2 == 0 {
            player += 1
            playerTurnLabel.text = "O turn"
            winner = "X"
            return "X"
        } else {
            player += 1
            playerTurnLabel.text = "X turn"
            winner = "O"
            return "O"
        }
        
    }
    var xWinCombinations: [String] = ["123", "159", "147", "258", "369", "357", "456", "789"]
    var oWinCombinations: [String] = ["123", "159", "147", "258", "369", "357", "456", "789"]
    @IBOutlet weak var playerTurnLabel: UILabel!

    @IBOutlet var buttonsOutlet: [UIButton]!
    
    @IBAction func buttonsTap(_ sender: UIButton) {
        sender.isEnabled = false
        sender.setTitle(playerCheck(), for: .disabled)
        winningCheck(sender: sender)

    }
    
    @IBAction func PlayResetButtonTap(_ sender: UIButton) {
        resetGame()
    }
    func resetGame() {
        
        player = 0
        fullBoard = 0
        playerTurnLabel.text = "X turn"
        xWinCombinations = ["123", "159", "147", "258", "369", "357", "456", "789"]
        oWinCombinations = ["123", "159", "147", "258", "369", "357", "456", "789"]
        winner = ""
        for button in buttonsOutlet {
            button.setTitle("", for: .disabled)
            button.isEnabled = true
        }
    }
    
    func winningCheck(sender: UIButton){
        fullBoard += 1
            print(fullBoard)
        if winner == "X" {
            for(index, combination) in xWinCombinations.enumerated() {
                if combination.contains("\(sender.tag)") {
                    xWinCombinations[index] = combination.replacingOccurrences(of: "\(sender.tag)", with: "0")
                    if xWinCombinations.contains("000") {
                        alertShow(winnerIs: winner)
                        break
                    }
            }
            }
            if fullBoard == 9 {
                fullBoardReset()
            }
        } else if winner == "O" {
            for(index, combination) in oWinCombinations.enumerated() {
                if combination.contains("\(sender.tag)") {
                    oWinCombinations[index] = combination.replacingOccurrences(of: "\(sender.tag)", with: "0")
                    if oWinCombinations.contains("000") {
                        alertShow(winnerIs: winner)
                        break
                    }
            }
            }
            if fullBoard == 9 {
                fullBoardReset()
            }
        }
    }
    
    func alertShow(winnerIs: String) {
        let alert = UIAlertController(title: "\(winner) wins!!", message: "\(winner) player is the best!", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "RESET", style: .default, handler: {_ in
        self.resetGame()
        }))
        self.present(alert, animated: true)
    }
    
    func fullBoardReset(){
        let alert = UIAlertController(title: "It's a draw!!", message: "You are too good at this game!!", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "RESET", style: .default, handler: {_ in
        self.resetGame()
        }))
        self.present(alert, animated: true)
    }
}

