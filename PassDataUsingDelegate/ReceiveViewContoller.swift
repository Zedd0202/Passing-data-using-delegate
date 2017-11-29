//
//  SecondViewController.swift
//  PassDataUsingDelegate
//
//  Created by Zedd on 2017. 11. 28..
//  Copyright © 2017년 Zedd. All rights reserved.
//

import UIKit

class ReceiveViewContoller: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "show" {
            let viewController : SendViewController = segue.destination as! SendViewController
            viewController.delegate = self
        }
    }
    
}
extension ReceiveViewContoller : SendDataDelegate{
    func sendData(data: String) {
        myLabel.text = data
    }
    
}
