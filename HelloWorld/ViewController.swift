//
//  ViewController.swift
//  HelloWorld
//
//  Created by Curtis Vanzandt on 5/23/20.
//  Copyright © 2020 Curtis Vanzandt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let emojiDict: [String: String] = ["👾": "Alien monster",
                                           "👻": "Ghost",
                                           "🤖": "Robot",
                                           "🤓": "Nerd"]
        
        let selectedButton = sender
        
        // Get the emoji from the title label of the selected button
        if let wordToLookup = selectedButton.titleLabel?.text {
            
            // Get the meaning of the emoji from the dictionary
            // Fill in the code below
            let meaning = emojiDict[wordToLookup]
            
            
            // Change the line below to display the meaning of the emoji instead of Hello World
            let alertController = UIAlertController(title: "Emoji Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)

            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
            
        }
    }


}

