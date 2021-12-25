//
//  ViewController.swift
//  prework
//
//  Created by Hyerin Lee on 12/22/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var changeTxt: UIButton!
    @IBOutlet weak var enterText: UITextField!
    @IBOutlet weak var View1: UIView!
    @IBOutlet weak var TextLabel: UILabel!
    var current = ""
    @IBAction func ButtonClicked(_ sender: Any) {
        if( TextLabel.textColor != UIColor.orange){
            TextLabel.textColor = UIColor.orange
        }
        else{
            TextLabel.textColor = UIColor.systemTeal
        }
        
    }
    @IBAction func bgButtonClicked(_ sender: Any) {
        if(View1.backgroundColor != UIColor.magenta){
            View1.backgroundColor = UIColor.magenta
        }
        else{
            View1.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBAction func changeString(_ sender: Any) {
        current = TextLabel.text!
        if(TextLabel.text != "Goodbye 👋"){
            TextLabel.text = "Goodbye 👋"
        }
        else{
            TextLabel.text = current
        }
        
    }
    @IBAction func `default`(_ sender: Any) {
        TextLabel.textColor = UIColor.systemTeal
        View1.backgroundColor = UIColor.magenta
        TextLabel.text = "Hello from Hyerin!"
    }
    @IBAction func changeText(_ sender: Any) {
        enterText.resignFirstResponder()
        if (enterText.text != ""){
            TextLabel.text = enterText.text
        }
        else{
            TextLabel.text = "Hello from Hyerin!"
        }
    }
}

