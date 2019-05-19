//
//  ViewController.swift
//  Hangman
//
//  Created by murad on 18/05/2019.
//  Copyright © 2019 murad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var word: UILabel!
    @IBOutlet weak var inputLetter: UITextField!
    
    let wordsArray = ["hello", "apple", "computer", "cat"]
    var currentWord = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        startGame()
        
        word.text = currentWord
        
    }
    
    @IBAction func checkTapped(_ sender: Any) {
    }
    
    func startGame() {
        if let currentWord = wordsArray.randomElement() {
            self.currentWord = currentWord
        }
    }
}

