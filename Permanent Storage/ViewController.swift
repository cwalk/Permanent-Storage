//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Clayton Walker on 10/11/15.
//  Copyright © 2015 Clayton Walker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSUserDefaults.standardUserDefaults().setObject("Clayton", forKey: "name")
        
        //Force unwrap in order to get rid of "Optional(username)" when it prints to the console
        let userName = NSUserDefaults.standardUserDefaults().objectForKey("name")! as! NSString
        
        print(userName)
        
        let myArray = [1, 2, 3, 4]
        
        NSUserDefaults.standardUserDefaults().setObject(myArray, forKey: "array")
        
        //as! forces it to be cast as an NSString or NSArray instead of AnyObject
        let returnedArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        
        print(returnedArray)
        
        for x in returnedArray {
            print(x)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

