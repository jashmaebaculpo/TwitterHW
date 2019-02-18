//
//  LoginViewController.swift
//  Twitter
//
//  Created by Jashmae Baculpo on 2/17/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLoginButton(_ sender: Any) {
        //print ("Hello World")
        let myURL = "https://api.twitter.com/oauth/request_token"
        TwitterAPICaller.client?.login(url: myURL, success: {
            self.performSegue(withIdentifier: "loginToHome", sender: self)
        }, failure: { (Error) in
            print("Could not login")
        })
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
