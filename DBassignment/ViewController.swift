//
//  ViewController.swift
//  DBassignment
//
//  Created by Ajay Gopalkrishna on 10/8/15.
//  Copyright © 2015 Ajay Gopalkrishna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

class CreateAccountRootViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}

class SignInRootViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

class CreateAccountViewController: UIViewController {
    
    @IBOutlet var CreateAccountUIView: UIView!
    
    @IBOutlet weak var CreateAccountUIImageView: UIImageView!
    
    var create_1: UIImage!
    var create_2: UIImage!
    var create_3: UIImage!
    var create_4: UIImage!
    var images: [UIImage]!
    var animatedImage: UIImage!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        create_1 = UIImage(named: "create1")
        create_2 = UIImage(named: "create2")
        create_3 = UIImage(named: "create3")
        
        create_4 = UIImage(named: "create4")
        
        images = [create_1, create_2, create_3]
      //  animatedImage = UIImage.animatedImageWithImages(images, duration: 1.0)
     
        delay (1) {
            self.CreateAccountUIImageView.image = self.create_1            
        }
        
        delay (2) {
            self.CreateAccountUIImageView.image = self.create_2
            
        }
        delay (3) {
            self.CreateAccountUIImageView.image = self.create_3
        
        }
        delay (4) {
            self.CreateAccountUIImageView.image = self.create_4
            
        }
        delay(5){
            self.performSegueWithIdentifier("AcceptSegue", sender: self)
        }
    
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }

    
    @IBAction func onButton(sender: AnyObject) {
            dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
    
    
    
    
    

}


class SignInViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onButtonSignIn(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}





