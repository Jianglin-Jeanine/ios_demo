//
//  signUpViewController.swift
//  Jeanine_IOS
//
//  Created by Jianzhong Chen on 1/4/15.
//  Copyright (c) 2015 Jianzhong Chen. All rights reserved.
//

import UIKit

class signUpViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate{

    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmpasswordTextField: UITextField!
    
    @IBOutlet weak var genderTextField: UITextField!
    
    var genderPicker: UIPickerView! = UIPickerView()
    
    let gender: [String] = ["Male", "Female", "other"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        genderPicker.delegate = self
        genderPicker.dataSource = self
        genderTextField.delegate = self
        genderTextField.inputView = genderPicker
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUpSubmit(sender: AnyObject) {
        var newUser:AVUser = AVUser()
        newUser.username = usernameTextField.text
        newUser.email = emailTextField.text
        newUser.password = passwordTextField.text
        newUser.setObject(genderTextField.text, forKey: "gender")
        newUser.signUpInBackgroundWithBlock { (succeeded, error) -> Void in
            if succeeded {
                NSLog("Sign Up Successful")
                self.performSegueWithIdentifier("signUpToSignIn", sender: nil)
                NSLog("Redirecting to Sign In")
            } else {
                NSLog(error.localizedDescription)
            }
        }
        println("save User")
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return gender[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genderTextField.text = gender[row]
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
