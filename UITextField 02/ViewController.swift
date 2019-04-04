//
//  ViewController.swift
//  UITextField 02
//
//  Created by dit02 on 2019. 4. 4..
//  Copyright © 2019년 dit02. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func buttonPressed(_ sender: Any) {
        print(myTextField.text!)
        let inString = myTextField.text
        let outString = inString! + " Coding"
        myLabel.text = outString
        myTextField.text = "" // 다음을 위하여 공백
        
        // 키보드를 강제적으로 내림
        myTextField.resignFirstResponder()
    }
    
    // background를 tap하면 키보드가 내려감
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        myTextField.backgroundColor = UIColor.blue
        view.backgroundColor = UIColor.green
    }
}

