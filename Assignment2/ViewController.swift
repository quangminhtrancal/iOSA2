//
//  ViewController.swift
//  Assignment2
//
//  Created by Minh on 2017-09-27.
//  Copyright © 2017 Minh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtNumber: UITextField!
    
    
    @IBOutlet weak var txtviewName: UITextView!
    @IBOutlet weak var txtviewNumber: UITextView!
    
 
    
    @IBOutlet weak var slidebar: UISlider!
    @IBOutlet weak var txtSlide: UILabel!
    
    
    @IBOutlet weak var switch1: UISwitch!
    
    @IBOutlet weak var switch2: UISwitch!
    
    
    @IBOutlet weak var btndothing: UIButton!
    
    
    @IBOutlet weak var segmentcontrol: UISegmentedControl!
    
    
    // When either switch or button is pressed
    @IBAction func segmentpress(_ sender: Any) {
        switch segmentcontrol.selectedSegmentIndex{
        case 0:
            switch1.isHidden = false
            switch2.isHidden = false
            btndothing.isHidden = true
            switch1.setOn(true, animated: true)
            switch2.setOn(true, animated: true)
            switch1.isEnabled = true
            switch2.isEnabled = true
            
        case 1:
            switch1.isHidden = true
            switch2.isHidden = true
            btndothing.isHidden = false
            
        default:
            print("hello")
        }
        
    }
    
    // left switch is pressed
    @IBAction func press(_ sender: Any) {

        switch2.setOn(!switch1.isOn, animated: true)
        switch1.setOn(!switch1.isOn, animated: true)
        
    }
    
    // When right switch is pressed
    @IBAction func press2(_ sender: Any) {

        switch1.setOn(!switch2.isOn, animated: true)
        switch2.setOn(!switch2.isOn, animated: true)
    }
    
    // When the slide bar is slided
    
    @IBAction func sliderun(_ sender: Any) {
        let value = Int(slidebar.value*100)
        txtSlide.text=("\(value)")
        print(value,slidebar.value)
        
    }
    

    @IBAction func btn_set(_ sender: Any) {
    }
    
    

    
    // Button "Do some thing" is pressed
    @IBAction func dosome(_ sender: Any) {
        
        // create the alert
        let alert = UIAlertController(title: "Something was done", message: "Everything 's fine. You can breathe easy now and continue", preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {

        super.viewDidLoad()

        // Change from Return button to Dont button
        txtName.returnKeyType = UIReturnKeyType.done
        txtName.addTarget(self, action: #selector(enterPressed), for: .editingDidEndOnExit)
        
        // Hide the Do nothing button
        btndothing.isHidden = true
//        let toolbar = UIToolbar()
//        toolbar.sizeToFit()
        

        

    }

    // Function to end text when Done button is pressed
    @objc func enterPressed(){
        //do something with typed text if needed
        txtName.resignFirstResponder()
    }
    
    
    // Begin to edit name
//    @IBAction func namechange(_ sender: UITextField) {
//
//        //print("hello")
//    }
    


    // Finish editting
    @IBAction func nameeditingdone(_ sender: Any) {
        let name: String!
        name = txtName.text
        if name == ""{
          txtviewName.text = ("Name field has been cleared")
        }
        else{
          txtviewName.text = ("Hello, \(name!)!")
            view.endEditing(true)
          txtNumber.becomeFirstResponder()
        }
        
    }
    
    // For updating number field
    @IBAction func Buttonclick(_ sender: Any) {
        if txtNumber.text == ""{
            txtviewNumber.text=" Number field has been cleared"
            txtNumber.endEditing(true)
        }
        else{
            txtviewNumber.text=txtNumber.text
            txtNumber.endEditing(true)
        }

      
        
    }
    // Finishing editting number
    @IBAction func End_edit_Number(_ sender: Any) {
        txtNumber.resignFirstResponder()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

