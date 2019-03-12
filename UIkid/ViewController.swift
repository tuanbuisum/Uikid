//
//  ViewController.swift
//  UIkid
//
//  Created by Admin on 3/11/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showView") {
            let controller = segue.destination
            controller.popoverPresentationController?.delegate = self
            controller.preferredContentSize = CGSize(width: 160, height: 30)
        }
    }
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }

}

