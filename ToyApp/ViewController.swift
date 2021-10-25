//
//  ViewController.swift
//  ToyApp
//
//  Created by Valentina on 22.10.2021.
//

import UIKit
import OAuth2

class ViewController: UIViewController {

    @IBOutlet weak var signIn: UIButton!
    
    let oauth2 = OAuth2CodeGrant(settings: [
        "client_id": "95601505476e322699cc",
        "client_secret": "cf82ef7faab5d4d7ebe14663c51c8dcb13bf19c8",
        "authorize_uri": "https://github.com/login/oauth/authorize",
        "token_uri": "https://github.com/login/oauth/access_token",   // code grant only
        "redirect_uris": ["ToyApp://oauth/callback"],   // register your own "myapp" scheme in Info.plist
        "scope": "user repo:status",
        "secret_in_body": true,    // Github needs this
        "keychain": false,         // if you DON'T want keychain integration
    ] as OAuth2JSON)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        signIn.layer.cornerRadius = 4
        signIn.layer.borderWidth = 1
        signIn.layer.borderColor = UIColor.white.cgColor
        
        signIn.setTitle("Sign in", for: UIControl.State.normal)
        signIn.setTitle("SIGN IN", for: .highlighted)
        oauth2.authConfig.authorizeEmbedded = true
        oauth2.authConfig.authorizeContext =  self
    }

    
    
    @IBAction func signIn(_ sender: Any) {        
    }
    
}

