//
//  profileViewController.swift
//  Jeanine_IOS
//
//  Created by Jianzhong Chen on 1/8/15.
//  Copyright (c) 2015 Jianzhong Chen. All rights reserved.
//

import UIKit

class profileViewController: UIViewController {

    @IBOutlet weak var username: UILabel!
    
    @IBOutlet weak var email: UILabel!
    
    @IBOutlet weak var gender: UILabel!
    
    var currentUser = AVUser.currentUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if currentUser != nil {
            
        } else {
            self.performSegueWithIdentifier("profileToSignIn", sender: nil)
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        username.text = currentUser.username
        email.text = currentUser.email
        gender.text = currentUser.valueForKey("gender") as? String
        username.adjustsFontSizeToFitWidth = true
        email.adjustsFontSizeToFitWidth = true
        gender.adjustsFontSizeToFitWidth = true
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
