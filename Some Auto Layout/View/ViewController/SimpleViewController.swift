//
//  SimpleViewController.swift
//  Some Auto Layout
//
//  Created by Shishir_Mac on 4/3/23.
//

import UIKit

class SimpleViewController: UIViewController {
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var midView: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        viewUpdate()
    }
    
    func viewUpdate() {
        topView.layer.cornerRadius = 10
        topView.dropShadow()
        
        midView.layer.cornerRadius = 10
        midView.dropShadow()
        
        bottomView.layer.cornerRadius = 10
        bottomView.dropShadow()
    }

}


