//
//  CoreViewController.swift
//  Some Auto Layout
//
//  Created by Shishir_Mac on 4/3/23.
//

import UIKit

class CoreViewController: UIViewController {
    
    // Move View
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var blurImageView: UIImageView!
    
    //Increase Size
    @IBOutlet weak var sizeImageView: UIImageView!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    @IBOutlet weak var sizeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.layer.cornerRadius = 5
        sizeButton.layer.cornerRadius = 5
        
        // Do any additional setup after loading the view.
    }
    
    
    // Move View Function
    @IBAction func moveButtonPressed(_ sender: Any) {

        let newConstraint = NSLayoutConstraint(item: redView as Any, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: view.frame.width)
        
        UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseOut , animations: {
            self.view.removeConstraint(self.leadingConstraint)
            self.view.addConstraint(newConstraint)
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        leadingConstraint = newConstraint
    }
    
    
    //Increase Size Function
    @IBAction func sizeButtonAction(_ sender: UIButton) {
        
        if heightConstraint.constant == 128 {
            UIView.animate(withDuration: 0.5, animations: {
                self.heightConstraint.constant = 200
                self.widthConstraint.constant = 200
                self.view.layoutIfNeeded()
            })
        } else {
            UIView.animate(withDuration: 0.5, animations: {
                self.heightConstraint.constant = 128
                self.widthConstraint.constant = 128
                self.view.layoutIfNeeded()
            })
        }
        
        
    }
    
    
}
