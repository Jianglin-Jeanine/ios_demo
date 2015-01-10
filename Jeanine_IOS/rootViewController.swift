//
//  rootViewController.swift
//  Jeanine_IOS
//
//  Created by Jianzhong Chen on 1/9/15.
//  Copyright (c) 2015 Jianzhong Chen. All rights reserved.
//

import UIKit

class rootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        var currentUser = AVUser.currentUser()
        if currentUser != nil {
            NSLog("Detected current user: %@", currentUser.username)
            self.performSegueWithIdentifier("rootToMainView", sender: nil)
            NSLog("Redirecting to Profile Page")
        } else {
            self.performSegueWithIdentifier("rootToSignIn", sender: nil)
            NSLog("continue to sign in")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
