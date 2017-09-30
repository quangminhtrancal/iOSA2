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
    
    @IBOutlet weak var btnswitch: UIButton!
    
    @IBOutlet weak var btnbutton: UIButton!
    
    
    @IBOutlet weak var btndothing: UIButton!
    
    
    // left switch is pressed
    @IBAction func press(_ sender: Any) {
        if (switch2.isEnabled==true){
            switch2.setOn(false, animated: true)
            switch1.isEnabled=false
            switch2.isEnabled=false
        }
    }
    

    @IBAction func press2(_ sender: Any) {
        if (switch1.isEnabled==true){
            switch1.setOn(false, animated: true)
            switch1.isEnabled=false
            switch2.isEnabled=false
        }
    }
    
    
    
    @IBAction func sliderun(_ sender: Any) {
        let value = Int(slidebar.value*100)
        txtSlide.text=("\(value)")
        print(value,slidebar.value)
        
    }
    

    @IBAction func btn_set(_ sender: Any) {
    }
    
    
    // Button swith at the bottom is pressed
    @IBAction func Switchpress(_ sender: Any) {
        switch1.isHidden = false
        switch2.isHidden = false
        btndothing.isHidden = true
        switch1.setOn(true, animated: true)
        switch2.setOn(true, animated: true)
        switch1.isEnabled = true
        switch2.isEnabled = true
        //btnswitch.backgroundColor = UIColor.blue
        btnswitch.isHighlighted = true
        
    }
    // Button at the bottom is pressed
    @IBAction func Buttonpress(_ sender: Any) {
        switch1.isHidden = true
        switch2.isHidden = true
        btndothing.isHidden = false
        //btnbutton.backgroundColor = UIColor.lightGray
       btnbutton.isHighlighted = true
        
        
        
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
        // Do any additional setup after loading the view, typically from a nib.
        //btnswitch.backgroundColor(blue)
        
        btndothing.isHidden = true
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let donebutton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(self.doneClicked))
        toolbar.setItems([donebutton], animated: false)
        txtName.inputAccessoryView = toolbar
    }
    @objc func doneClicked(){
        view.endEditing(true)
    }
    // Begin to edit name
    @IBAction func namechange(_ sender: UITextField) {

        //print("hello")
    }
    


    // Finish editting
    @IBAction func nameeditingdone(_ sender: Any) {
        let name: String!
        name = txtName.text
        if name == ""{
          txtviewName.text = ("Name field has been cleared")
        }
        else{
          txtviewName.text = ("Hello, \(name!)!")
          txtNumber.becomeFirstResponder()
        }
        
    }
    
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

