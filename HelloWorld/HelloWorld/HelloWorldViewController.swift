//
//  HelloWorldViewController.swift
//  HelloWorld
//
//  Created by R3alFr3e on 6/7/14.
//  Copyright (c) 2014 intoxicated. All rights reserved.
//

import UIKit

class HelloWorldViewController: UIViewController {

    //creating variables implicitly unwrapped
    var myLabel:UILabel!
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set background as white
        self.view.backgroundColor = UIColor.whiteColor()
        
        //set up label on the view
        //initialize label
        myLabel = UILabel(frame: CGRectMake(self.view.bounds.width/2-50, self.view.bounds.height/2, 100, 30))
        
        //set text
        myLabel.text = "Hello, World!"
        
        //set color
        myLabel.textColor = UIColor.blackColor()
        
        //insert into the view
        self.view.addSubview(myLabel)
    }

    //a little more trick
    //randomly move around helloWorld label around the view every 3 seconds
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
