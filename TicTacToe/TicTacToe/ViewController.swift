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
    func playerCheck() -> String{
        if player % 2 == 0 {
            player += 1
            playerTurnLabel.text = "O turn"
            return "X"
        } else {
            player += 1
            playerTurnLabel.text = "X turn"
            return "O"
        }
        
    }
    
    @IBOutlet weak var playerTurnLabel: UILabel!
    @IBOutlet weak var upLeftButton: UIButton!
    @IBOutlet weak var upMiddleButton: UIButton!
    @IBOutlet weak var upRightButton: UIButton!
    @IBOutlet weak var middleLeftButton: UIButton!
    @IBOutlet weak var centerButton: UIButton!
    @IBOutlet weak var middleRightButton: UIButton!
    @IBOutlet weak var bottomLeftButton: UIButton!
    @IBOutlet weak var bottomMiddleButton: UIButton!
    @IBOutlet weak var bottomRightButton: UIButton!
    
    @IBAction func upLeftButtonTap(_ sender: UIButton) {
        upLeftButton.isEnabled = false
        upLeftButton.setTitle(playerCheck(), for: .disabled)
        winningCheck()

    }
    
    @IBAction func upMiddleButtonTap(_ sender: UIButton) {
        upMiddleButton.isEnabled = false
        upMiddleButton.setTitle(playerCheck(), for: .disabled)
        winningCheck()
    }
    
    @IBAction func upRightButtonTap(_ sender: UIButton) {
        upRightButton.isEnabled = false
        upRightButton.setTitle(playerCheck(), for: .disabled)
        winningCheck()
    }
    
    
    @IBAction func middleLeftButtonTap(_ sender: UIButton) {
        middleLeftButton.isEnabled = false
        middleLeftButton.setTitle(playerCheck(), for: .disabled)
        winningCheck()
    }
    
    @IBAction func centerButtonTap(_ sender: UIButton) {
        centerButton.isEnabled = false
        centerButton.setTitle(playerCheck(), for: .disabled)
        winningCheck()
    }
    
    @IBAction func middleRightButtonTap(_ sender: UIButton) {
        middleRightButton.isEnabled = false
        middleRightButton.setTitle(playerCheck(), for: .disabled)
        winningCheck()
    }
    
    @IBAction func bottomLeftButtonTap(_ sender: UIButton) {
        bottomLeftButton.isEnabled = false
        bottomLeftButton.setTitle(playerCheck(), for: .disabled)
        winningCheck()
    }
    
    @IBAction func bottomMiddleButtonTap(_ sender: UIButton) {
        bottomMiddleButton.isEnabled = false
        bottomMiddleButton.setTitle(playerCheck(), for: .disabled)
        winningCheck()
    }
    
    
    @IBAction func bottomRightButtonTap(_ sender: UIButton) {
        bottomRightButton.isEnabled = false
        bottomRightButton.setTitle(playerCheck(), for: .disabled)
        winningCheck()
    }
    
    @IBAction func PlayResetButtonTap(_ sender: UIButton) {
        resetGame()
    }
    func resetGame() {
        
        player = 0
        fullBoard = 0
        playerTurnLabel.text = "X turn"
        upLeftButton.setTitle("", for: .disabled)
        upMiddleButton.setTitle("", for: .disabled)
        upRightButton.setTitle("", for: .disabled)
        middleLeftButton.setTitle("", for: .disabled)
        centerButton.setTitle("", for: .disabled)
        middleRightButton.setTitle("", for: .disabled)
        bottomLeftButton.setTitle("", for: .disabled)
        bottomMiddleButton.setTitle("", for: .disabled)
        bottomRightButton.setTitle("", for: .disabled)
        
        upLeftButton.isEnabled = true
        upMiddleButton.isEnabled = true
        upRightButton.isEnabled = true
        middleLeftButton.isEnabled = true
        centerButton.isEnabled = true
        middleRightButton.isEnabled = true
        bottomLeftButton.isEnabled = true
        bottomMiddleButton.isEnabled = true
        bottomRightButton.isEnabled = true
    }
    func winningCheck(){
        fullBoard += 1
        
        if upLeftButton.title(for: .disabled) == "X" &&
           upMiddleButton.title(for: .disabled) == "X" &&
            upRightButton.title(for: .disabled) == "X" {
            let alert = UIAlertController(title: "X wins!!", message: "X player is the best!", preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "RESET", style: .default, handler: {_ in
            self.resetGame()
            }))
            self.present(alert, animated: true)
        } else if upLeftButton.title(for: .disabled) == "X" &&
                  centerButton.title(for: .disabled) == "X" &&
                  bottomRightButton.title(for: .disabled) == "X" {
                  let alert = UIAlertController(title: "X wins!!", message: "X player is the best!", preferredStyle: .actionSheet)
                  alert.addAction(UIAlertAction(title: "RESET", style: .default, handler: {_ in
                  self.resetGame()
                   }))
                  self.present(alert, animated: true)
        } else if upLeftButton.title(for: .disabled) == "X" &&
                  middleLeftButton.title(for: .disabled) == "X" &&
                  bottomLeftButton.title(for: .disabled) == "X" {
                  let alert = UIAlertController(title: "X wins!!", message: "X player is the best!", preferredStyle: .actionSheet)
                  alert.addAction(UIAlertAction(title: "RESET", style: .default, handler: {_ in
                  self.resetGame()
                  }))
                  self.present(alert, animated: true)
        } else if upMiddleButton.title(for: .disabled) == "X" &&
                  centerButton.title(for: .disabled) == "X" &&
                  bottomMiddleButton.title(for: .disabled) == "X" {
                  let alert = UIAlertController(title: "X wins!!", message: "X player is the best!", preferredStyle: .actionSheet)
                  alert.addAction(UIAlertAction(title: "RESET", style: .default, handler: {_ in
                  self.resetGame()
                  }))
                  self.present(alert, animated: true)
        } else if upRightButton.title(for: .disabled) == "X" &&
                  centerButton.title(for: .disabled) == "X" &&
                  bottomLeftButton.title(for: .disabled) == "X" {
                  let alert = UIAlertController(title: "X wins!!", message: "X player is the best!", preferredStyle: .actionSheet)
                  alert.addAction(UIAlertAction(title: "RESET", style: .default, handler: {_ in
                  self.resetGame()
                  }))
                  self.present(alert, animated: true)
        } else if middleLeftButton.title(for: .disabled) == "X" &&
                  centerButton.title(for: .disabled) == "X" &&
                  middleRightButton.title(for: .disabled) == "X" {
                  let alert = UIAlertController(title: "X wins!!", message: "X player is the best!", preferredStyle: .actionSheet)
                  alert.addAction(UIAlertAction(title: "RESET", style: .default, handler: {_ in
                  self.resetGame()
                  }))
                  self.present(alert, animated: true)
        } else if bottomLeftButton.title(for: .disabled) == "X" &&
                  bottomMiddleButton.title(for: .disabled) == "X" &&
                  bottomRightButton.title(for: .disabled) == "X" {
                  let alert = UIAlertController(title: "X wins!!", message: "X player is the best!", preferredStyle: .actionSheet)
                  alert.addAction(UIAlertAction(title: "RESET", style: .default, handler: {_ in
                  self.resetGame()
                  }))
                 self.present(alert, animated: true)
          } else if upLeftButton.title(for: .disabled) == "O" &&
                    upMiddleButton.title(for: .disabled) == "O" &&
                    upRightButton.title(for: .disabled) == "O" {
                    let alert = UIAlertController(title: "O wins!!", message: "O player is the best!", preferredStyle: .actionSheet)
                    alert.addAction(UIAlertAction(title: "RESET", style: .default, handler: {_ in
                    self.resetGame()
                    }))
                    self.present(alert, animated: true)
         } else if upLeftButton.title(for: .disabled) == "O" &&
                   centerButton.title(for: .disabled) == "O" &&
                   bottomRightButton.title(for: .disabled) == "O" {
                   let alert = UIAlertController(title: "O wins!!", message: "O player is the best!", preferredStyle: .actionSheet)
                   alert.addAction(UIAlertAction(title: "RESET", style: .default, handler: {_ in
                   self.resetGame()
                   }))
                   self.present(alert, animated: true)
         } else if upLeftButton.title(for: .disabled) == "O" &&
                   middleLeftButton.title(for: .disabled) == "O" &&
                   bottomLeftButton.title(for: .disabled) == "O" {
                   let alert = UIAlertController(title: "O wins!!", message: "O player is the best!", preferredStyle: .actionSheet)
                   alert.addAction(UIAlertAction(title: "RESET", style: .default, handler: {_ in
                   self.resetGame()
                   }))
                   self.present(alert, animated: true)
         } else if upMiddleButton.title(for: .disabled) == "O" &&
                   centerButton.title(for: .disabled) == "O" &&
                   bottomMiddleButton.title(for: .disabled) == "O" {
                   let alert = UIAlertController(title: "O wins!!", message: "O player is the best!", preferredStyle: .actionSheet)
                   alert.addAction(UIAlertAction(title: "RESET", style: .default, handler: {_ in
                   self.resetGame()
                   }))
                   self.present(alert, animated: true)
         } else if upRightButton.title(for: .disabled) == "O" &&
                   centerButton.title(for: .disabled) == "O" &&
                   bottomLeftButton.title(for: .disabled) == "O" {
                   let alert = UIAlertController(title: "O wins!!", message: "O player is the best!", preferredStyle: .actionSheet)
                   alert.addAction(UIAlertAction(title: "RESET", style: .default, handler: {_ in
                   self.resetGame()
                   }))
                   self.present(alert, animated: true)
         } else if middleLeftButton.title(for: .disabled) == "O" &&
                   centerButton.title(for: .disabled) == "O" &&
                   middleRightButton.title(for: .disabled) == "O" {
                   let alert = UIAlertController(title: "O wins!!", message: "O player is the best!", preferredStyle: .actionSheet)
                   alert.addAction(UIAlertAction(title: "RESET", style: .default, handler: {_ in
                   self.resetGame()
                   }))
                   self.present(alert, animated: true)
         } else if bottomLeftButton.title(for: .disabled) == "O" &&
                   bottomMiddleButton.title(for: .disabled) == "O" &&
                   bottomRightButton.title(for: .disabled) == "O" {
                   let alert = UIAlertController(title: "O wins!!", message: "O player is the best!", preferredStyle: .actionSheet)
                   alert.addAction(UIAlertAction(title: "RESET", style: .default, handler: {_ in
                   self.resetGame()
                   }))
                   self.present(alert, animated: true)
           } else if fullBoard == 9 {
            let alert = UIAlertController(title: "It's a draw", message: "You are too good at this game!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "RESET", style: .default, handler: {_ in
            self.resetGame()
            }))
            self.present(alert, animated: true)
        }
    }
}

