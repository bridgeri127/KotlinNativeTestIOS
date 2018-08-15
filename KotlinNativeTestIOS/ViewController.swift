//
//  ViewController.swift
//  KotlinNativeTestIOS
//
//  Created by Richard Bridge on 15/08/2018.
//  Copyright © 2018 Zendesk. All rights reserved.
//

import UIKit
import KotlinNativeTestLibrary


class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onButtonClicked(_ sender: Any) {
        
        let complexClass = KNTLComplexClass(information: "This info describes the complex object")
        
        textView.text = complexClass.information + "\nBool = " + String(complexClass.getBool()) + "\nGeneric = " + complexClass.getGeneric().returnString(string: "This string has been returned through several levels")
        
    }
    
}
