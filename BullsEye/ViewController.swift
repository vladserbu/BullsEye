//
//  ViewController.swift
//  BullsEye
//
//  Created by Vlad Serbu on 05/09/2019.
//  Copyright © 2019 Vlad Serbu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 0
    var targetValue = 0
    @IBOutlet weak var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()

        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert() {
        let difference = abs(currentValue - targetValue)

        let message = "The value of the slider is: \(currentValue)"
            +
        "\nThe target value is: \(targetValue)" +
        "\nThe difference is: \(difference)"

        let alert = UIAlertController(title: "Hello world",
                                      message: message,

                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok",
                                   style: .default,
                                   handler: nil)
        alert.addAction(action)

        present(alert, animated: true, completion: nil)
        startNewRound()
    }
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }

    @IBOutlet weak var targetLabel: UILabel!

    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }

    func updateLabels() {
        targetLabel.text = "\(targetValue)"
    }
}
