//
//  SignInViewController.swift
//  Animation
//
//  Created by Strogalev on 26.11.20.
//  Copyright © 2020 Strogalev. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    
    @IBOutlet weak var logotype: UIImageView!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var inputLogin: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var notAccountLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        inputLogin.center.x += view.bounds.width
        loginLabel.center.x -= view.bounds.width
        inputPassword.center.x += view.bounds.width
        passwordLabel.center.x -= view.bounds.width
        appNameLabel.center.y -= view.bounds.height
        logotype.center.y -= view.bounds.height
        
        signInButton.center.y += view.bounds.height
        notAccountLabel.center.y += view.bounds.height
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0) {
            self.inputLogin.center.x -= self.view.bounds.width
            self.loginLabel.center.x += self.view.bounds.width
            self.inputPassword.center.x -= self.view.bounds.width
            self.passwordLabel.center.x += self.view.bounds.width
            self.appNameLabel.center.y += self.view.bounds.height
            self.logotype.center.y += self.view.bounds.height
            
            self.signInButton.center.y -= self.view.bounds.height
            self.notAccountLabel.center.y -= self.view.bounds.height
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
