//
//  LoginVC.swift
//  RJSlideMenu
//
//  Created by rjk on 6/01/2016.
//  Copyright © 2016 Techiepandas. All rights reserved.
//

import Foundation
import UIKit


class LoginVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginBtnTapped(sender: UIButton) {
       performSegueWithIdentifier("toHomeSegue", sender: nil)
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let slideMenuController = appDelegate.createSlideMenu()
        appDelegate.window?.rootViewController = slideMenuController
    }
}
