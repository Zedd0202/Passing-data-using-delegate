//
//  ViewController.swift
//  PassDataUsingDelegate
//
//  Created by Zedd on 2017. 11. 28..
//  Copyright © 2017년 Zedd. All rights reserved.
//

import UIKit

protocol SendDataDelegate {
    func sendData(data: String)
}

class SendViewController: UIViewController {

    var delegate: SendDataDelegate?

    @IBOutlet weak var myTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func myButtonClicked(_ sender: Any) {
        if let data = myTextField.text {
            delegate?.sendData(data: data)
            dismiss(animated: true, completion: nil)
        }
            
        
    }

}

