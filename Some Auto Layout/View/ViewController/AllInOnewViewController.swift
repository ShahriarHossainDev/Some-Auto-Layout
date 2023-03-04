//
//  AllInOnewViewController.swift
//  Some Auto Layout
//
//  Created by Shishir_Mac on 4/3/23.
//

import UIKit

class AllInOnewViewController: UIViewController {
    
    var firstName: String = ""
    var lastName: String = ""
    
    let progress = Progress(totalUnitCount: 10)
    
    @IBOutlet weak var aboutTextView: UITextView!
    
    @IBOutlet weak var topWithTitleView: UIView!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameUIButton: UIButton!
    
    @IBOutlet weak var basicImageView: UIImageView!
    @IBOutlet weak var genderLabel: UILabel!
    
    @IBOutlet weak var onAndOffLabel: UILabel!
    @IBOutlet weak var onAndOffSwitch: UISwitch!
    
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var markSlider: UISlider!
    @IBOutlet weak var markLabel: UILabel!
    
    @IBOutlet weak var numberStepper: UIStepper!
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var workDoneProgressView: UIProgressView!
    @IBOutlet weak var startProgressButton: UIButton!
    @IBOutlet weak var progressLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        UIViewModify()
        
        // Add Target for onAndOffSwitch
        onAndOffSwitch.addTarget(self, action: #selector(stateChanged), for: .valueChanged)
    }
    
    func configure(){
        fullNameLabel.text = ""
        genderLabel.text = ""
        onAndOffLabel.text = ""
        markLabel.text = "50"
        
        // Stepper
        numberStepper.wraps = true
        numberStepper.autorepeat = true
        numberStepper.maximumValue = 100
        numberLabel.text = "0"
        
        // TextView
        
        aboutTextView.text = """
UITextView supports the display of text using custom style information and also supports text editing. You typically use a text view to display multiple lines of text, such as when displaying the body of a large text document.
"""
    }
    
    // MARK: - function of Modify
    
    func UIViewModify() {
        
        // topWithTitleView modify
        topWithTitleView.layer.cornerRadius = 10
        topWithTitleView.dropShadow()
        
        // fullNameUIButton modify
        fullNameUIButton.dropShadow()
        
        basicImageView.dropShadow()
        
        startProgressButton.dropShadow()
        
        aboutTextView.layer.cornerRadius = 5
        aboutTextView.dropShadow()
        
    }
    
    // onAndOffSwitch Output Function
    @objc func stateChanged(switchState: UISwitch) {
        if switchState.isOn {
            onAndOffLabel.text = "On"
        } else {
            onAndOffLabel.text = "Off"
        }
    }
    
    // MARK: - IBAction
    
    @IBAction func fullNameButtonAction(_ sender: UIButton) {
        firstName = firstNameTextField.text ?? ""
        lastName = lastNameTextField.text ?? ""
        
        fullNameLabel.text = "\(firstName) \(lastName)"
        
    }
    
    // UISegmentedControl IBAction
    @IBAction func genderSegmentedAction(_ sender: UISegmentedControl) {
        switch genderSegmentedControl.selectedSegmentIndex
        {
        case 0:
            genderLabel.text = "Male"
        case 1:
            genderLabel.text = "Female"
        default:
            break
        }
    }
    
    // UISlider IBAction
    @IBAction func markSliderAction(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        
        markLabel.text = "\(currentValue)"
    }
    
    //UIStepper IBAction
    @IBAction func numberStepperAction(_ sender: UIStepper) {
        numberLabel.text = Int(sender.value).description
    }
    
    @IBAction func startProgressButtonAction(_ sender: UIButton) {
        workDoneProgressView.progress = 0.0
        progress.completedUnitCount = 0
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            guard self.progress.isFinished == false else {
                timer.invalidate()
                return
            }
            
            self.progress.completedUnitCount += 1
            self.workDoneProgressView.setProgress(Float(self.progress.fractionCompleted), animated: true)
            
            self.progressLabel.text = "\(Int(self.progress.fractionCompleted * 100)) %"
        }
    }
    
    
}
