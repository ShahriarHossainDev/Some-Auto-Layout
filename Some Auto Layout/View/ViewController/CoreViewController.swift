//
//  CoreViewController.swift
//  Some Auto Layout
//
//  Created by Shishir_Mac on 4/3/23.
//

import UIKit

class CoreViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var blurImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.layer.cornerRadius = 5

        // Do any additional setup after loading the view.
    }
    

    @IBAction func moveButtonPressed(_ sender: Any) {
        // 1
        let newConstraint = NSLayoutConstraint(item: redView as Any, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: view.frame.width)
        
        // 2
        UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseOut , animations: {
            self.view.removeConstraint(self.leadingConstraint)
            self.view.addConstraint(newConstraint)
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        // 3
        leadingConstraint = newConstraint
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
