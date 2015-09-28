//
//  ViewController.swift
//  HelloTV
//
//  Created by Rob Hudson on 9/28/15.
//  Copyright © 2015 Rob Hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bigLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button1.addTarget(self, action: "button1Pressed:", forControlEvents: .PrimaryActionTriggered)
        button2.addTarget(self, action: "button2Pressed:", forControlEvents: .PrimaryActionTriggered)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func button1Pressed(sender: AnyObject) {
        let alertController = UIAlertController(title: "Hello, TV", message: "This is the 4th generation Apple TV.", preferredStyle: .Alert)
        let okAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
        alertController.addAction(okAction)
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    func button2Pressed(sender: AnyObject) {
        let alertController = UIAlertController(title: "Warning", message: "You’re about to turn everything purple.", preferredStyle: .Alert)
        let changeAction = UIAlertAction(title: "Change to Purple", style: .Destructive) { alert in
            UIView.animateWithDuration(0.5) {
                self.view.backgroundColor = UIColor.purpleColor()
            }
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        alertController.addAction(changeAction)
        alertController.addAction(cancelAction)
        
        presentViewController(alertController, animated: true, completion: nil)
    }
}

