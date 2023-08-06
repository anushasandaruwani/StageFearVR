//
//  LoginViewController.swift
//  StageFearVR
//
//  Created by Anusha Sandaruwan on 2023-08-06.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

   
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logingClicked(_ sender: UIButton) {
        guard let email = emailText.text else {return}
        guard let password = passwordText.text else {return}
        
        Auth.auth().signIn(withEmail: email, password: password) { firebaseResult, error in
            if let e = error {
                print("error")
            }
            else
            {
                //GotoNext
                self.performSegue(withIdentifier: "goToHome", sender: self)
            }
            
        }
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
