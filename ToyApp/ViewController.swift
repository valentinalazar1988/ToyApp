//
//  ViewController.swift
//  ToyApp
//
//  Created by Valentina on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signIn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        signIn.layer.cornerRadius = 4
        signIn.layer.borderWidth = 1
        signIn.layer.borderColor = UIColor.white.cgColor
        
        signIn.setTitle("Sign in", for: UIControl.State.normal)
        signIn.setTitle("SIGN IN", for: .highlighted)
    }

    
    
    @IBAction func signIn(_ sender: Any) {
    }
    
}

