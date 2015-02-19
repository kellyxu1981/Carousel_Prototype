//
//  SigninViewController.swift
//  CarouselProject
//
//  Created by Kelly Xu on 2/6/15.
//  Copyright (c) 2015 kelly. All rights reserved.
//

import UIKit

class SigninViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTapBackBtn(sender: AnyObject) {
        navigationController!.popToRootViewControllerAnimated(true)
    }

    @IBAction func onTapGesture(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    @IBAction func onTapSigninBtn(sender: AnyObject) {
        println("email textField is \(emailTextField.text)")
        println("password textField is \(passwordTextField.text)")
        
        if (emailTextField.text == "kxu@gmail.com" && passwordTextField.text == "123"){
            var alertView = UIAlertView(title: nil, message: "signing in...", delegate: nil, cancelButtonTitle: nil)
            alertView.show()
            delay(1.5, { () -> () in
                alertView.dismissWithClickedButtonIndex(-1, animated: true)
                self.performSegueWithIdentifier("loginSegue", sender: nil)
            })
        }else if (emailTextField.text == ""){
            var alerView = UIAlertView(title: "Email Required", message: "Please enter your email address", delegate: nil, cancelButtonTitle: "OK")
            alerView.show()
        }else if(passwordTextField.text == ""){
            var alerView = UIAlertView(title: "Password Required", message: "Please enter your password", delegate: nil, cancelButtonTitle: "OK")
            alerView.show()
        }else{
            var alerView = UIAlertView(title: "Sign in Failed", message: "Incorrect email or password", delegate: nil, cancelButtonTitle: "OK")
            alerView.show()
        }
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
