//
//  ViewController.swift
//  ImpulseApp
//
//  Created by megan gessner on 1/26/19.
//  Copyright © 2019 megan gessner. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController, GIDSignInUIDelegate {
    // [START viewcontroller_vars]
    @IBOutlet weak var signInButton: GIDSignInButton!
    @IBOutlet weak var signOutButton: UIButton!
    @IBOutlet weak var disconnectButton: UIButton!
    @IBOutlet weak var statusText: UILabel!
    // [END viewcontroller_vars]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        GIDSignIn.sharedInstance().uiDelegate = self
        
        // Uncomment to automatically sign in the user.
        //GIDSignIn.sharedInstance().signInSilently()
        // TODO(developer) Configure the sign-in button look/feel
        // [START_EXCLUDE]
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(ViewController.receiveToggleAuthUINotification(_:)),
//                                               name: NSNotification.Name(rawValue: "ToggleAuthUINotification"),
//                                               object: nil)
//
//        statusText.text = "Initialized Swift app..."
//        toggleAuthUI()
        // [END_EXCLUDE]
    }
    



}

