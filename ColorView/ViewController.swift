//
//  ViewController.swift
//  ColorView
//
//  Created by Руслан Битюков on 21.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 10
        
        redSlider.value = 0.3
        greenSlider.value = 0.6
        blueSlider.value = 0.9
        
        backgraundColor()
    }
    
    func numberOfCharacters() {
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    func backgraundColor() {
        let backgraundColor = UIColor(red: CGFloat(redSlider.value),
                                      green: CGFloat(greenSlider.value),
                                      blue: CGFloat(blueSlider.value),
                                      alpha: 1.0)
        
        colorView.backgroundColor = backgraundColor
    }

    @IBAction func sliderValue(_ sender: UISlider) {
        backgraundColor()
        numberOfCharacters()
    }
}
