//
//  LoginViewController.swift
//  Some Auto Layout
//
//  Created by Shishir_Mac on 4/3/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: SAButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        loginButton.dropShadow()
        // Do any additional setup after loading the view.
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