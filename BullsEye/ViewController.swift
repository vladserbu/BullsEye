//
//  ViewController.swift
//  BullsEye
//
//  Created by Vlad Serbu on 05/09/2019.
//  Copyright © 2019 Vlad Serbu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Hello world",
                                      message: "This is my first app",

                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "Amazing",
                                   style: .default,
                                   handler: nil)
        alert.addAction(action)

        present(alert, animated: true, completion: nil)
}
}
