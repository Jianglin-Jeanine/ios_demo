//
//  homeViewController.swift
//  Jeanine_IOS
//
//  Created by Jianzhong Chen on 1/9/15.
//  Copyright (c) 2015 Jianzhong Chen. All rights reserved.
//

import UIKit

class homeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return targets.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let target = targets[indexPath.row]
        let cell: homeTableViewCell = tableView.dequeueReusableCellWithIdentifier("homeCell") as homeTableViewCell
        cell.update(target.name, image:target.image, time: target.time, like: target.like, comment: target.comment)
        cell.frame = CGRectMake(cell.frame.origin.x, cell.frame.origin.x, 100, cell.frame.height)
        return cell
    }

    var targets:[homeTarget] = [homeTarget]()
    
    func setup_targets() {
        var t1 = homeTarget(type:0, name: "Qihan", image: "img1", words: "", time: "3h", like: 321, comment: 25)
        var t2 = homeTarget(type:0, name: "jianzhong", image: "img2", words: "", time: "7h", like: 123, comment: 21)
        var t3 = homeTarget(type: 1, name: "chi", image: "img3", words: "This design is awesome!", time: "1d", like: 213, comment: 5)
        targets.append(t1)
        targets.append(t2)
        targets.append(t3)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        self.myTableView.autoresizingMask =  UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        
        self.setup_targets()
        self.myTableView.dataSource = self
        self.myTableView.delegate = self
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        var n1 = self.navigationController?.navigationBar.frame.height
        var n2 = self.navigationController?.navigationBar.frame.origin.y
        var n3 = self.tabBarController?.tabBar.frame.origin.y
        let y:CGFloat = n1! + n2!
        let w:CGFloat = self.view.frame.width
        let h:CGFloat = n3! - y
        self.myTableView.frame = CGRectMake(0, y, w, h)
    }
    
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sideBarToggle(sender: AnyObject) {
        toggleSideMenuView()
        self.tabBarController?.tabBar.frame.origin.x
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
