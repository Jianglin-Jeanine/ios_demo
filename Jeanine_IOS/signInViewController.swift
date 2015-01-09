//
//  signInViewController.swift
//  Jeanine_IOS
//
//  Created by Jianzhong Chen on 1/4/15.
//  Copyright (c) 2015 Jianzhong Chen. All rights reserved.
//

import UIKit

class signInViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        var currentUser = AVUser.currentUser()
        if currentUser != nil {
            NSLog("Detected current user: %@", currentUser.username)
            self.performSegueWithIdentifier("signInToMainView", sender: nil)
            NSLog("Redirecting to Profile Page")
        } else {
            NSLog("continue to sign in")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signInSubmit(sender: AnyObject) {
        AVUser.logInWithUsernameInBackground(usernameTextField.text, password: passwordTextField.text) { (user, error) -> Void in
            if user != nil {
                NSLog("Signed In with user: %@", user.username)
                self.performSegueWithIdentifier("signInToMainView", sender: nil)
                NSLog("Redirecting to Profile Page")
            } else {
                NSLog(error.localizedDescription)
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
