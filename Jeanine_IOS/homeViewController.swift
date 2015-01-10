//
//  homeViewController.swift
//  Jeanine_IOS
//
//  Created by Jianzhong Chen on 1/9/15.
//  Copyright (c) 2015 Jianzhong Chen. All rights reserved.
//

import UIKit

class homeViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var sideMenu: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sideMenu.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func menuClicked(sender: AnyObject) {
        self.navigationController?.navigationBar.frame.origin.x += 200
        self.view.frame.origin.x += 200
        self.tabBarController?.tabBar.frame.origin.x += 200
        sideMenu.frame.origin.x += 200
        
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
