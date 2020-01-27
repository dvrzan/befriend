//
//  WelcomeViewController.swift
//  BeFriend
//
//  Created by Danijela Vrzan on 2020-01-23.
//  Copyright © 2020 Danijela Vrzan. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var logoLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animateLabel()
    }
    
    func animateLabel() {
        let titleText = "Hi there! Let's"
        var charIndex = 0.0
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) { (timer) in
            self.logoLabel.text?.append("s")
        }
    }
    
}
