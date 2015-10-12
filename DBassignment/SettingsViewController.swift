//
//  SettingsViewController.swift
//  DBassignment
//
//  Created by Ajay Gopalkrishna on 10/10/15.
//  Copyright © 2015 Ajay Gopalkrishna. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var SettingsscrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        SettingsscrollView.contentSize = CGSize(width: 320, height: 800)
        SettingsscrollView.delegate = self
        print("Done delegate to self")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onButton(sender: AnyObject) {
        
        print("SignOut Clicked")
        
        //performSegueWithIdentifier("SignOutSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
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
