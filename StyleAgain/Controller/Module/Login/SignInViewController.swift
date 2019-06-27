//
//  SignInViewController.swift
//  StyleAgain
//
//  Created by Macmini on 12/2/18.
//  Copyright © 2018 Style Again. All rights reserved.
//

import UIKit

class SignInViewController: BaseViewController {
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSignIn(_ sender: Any) {
        UIManager.shared.showWalkThrough(controller: self)
    }
}
