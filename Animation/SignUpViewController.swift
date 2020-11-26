//
//  SignUpViewController.swift
//  Animation
//
//  Created by Strogalev on 26.11.20.
//  Copyright © 2020 Strogalev. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var imageCook: UIImageView!
    @IBOutlet weak var labelCook: UILabel!
    
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var textFieldLogin: UITextField!
    
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    

    override func viewWillAppear(_ animated: Bool) {
        imageCook.center.y -= view.bounds.height
        imageCook.center.x -= view.bounds.height
        labelCook.center.y -= view.bounds.height
        labelCook.center.x -= view.bounds.height
        
        loginLabel.center.x -= view.bounds.width
        textFieldLogin.center.x += view.bounds.width
        
        passwordLabel.center.x -= view.bounds.width
        textFieldPassword.center.x += view.bounds.width
        
        signUpButton.center.y += view.bounds.height
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0) {
            self.imageCook.center.y += self.view.bounds.height
            self.imageCook.center.x += self.view.bounds.height
            self.labelCook.center.y += self.view.bounds.height
            self.labelCook.center.x += self.view.bounds.height
            
            self.loginLabel.center.x += self.view.bounds.width
            self.textFieldLogin.center.x -= self.view.bounds.width
            
            self.passwordLabel.center.x += self.view.bounds.width
            self.textFieldPassword.center.x -= self.view.bounds.width
            
            self.signUpButton.center.y -= self.view.bounds.height
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
