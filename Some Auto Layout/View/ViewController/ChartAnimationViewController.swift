//
//  ChartAnimationViewController.swift
//  Some Auto Layout
//
//  Created by Shishir_Mac on 4/3/23.
//

import UIKit

class ChartAnimationViewController: UIViewController {
    
    var count: CGFloat = 0
    var progressRing: CircularProgressBar!
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        let xPosition = view.center.x
        let yPosition = view.center.y
        let position = CGPoint(x: xPosition, y: yPosition)
        
        progressRing = CircularProgressBar(radius: 100, position: position, innerTrackColor: .defaultInnerColor, outerTrackColor: .defaultOuterColor, lineWidth: 20)
        view.layer.addSublayer(progressRing)
        timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(incrementCount), userInfo: nil, repeats: true)
        timer.fire()
        
        view.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(resetProgressCount)))
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // Note only works when time has not been invalidated yet
    @objc func resetProgressCount() {
        count = 0
        timer.fire()
    }
    
    @objc func incrementCount() {
        count += 1
        progressRing.progress = count
        if count >= 100.0 {
            timer.invalidate()
        }
    }
    
}
