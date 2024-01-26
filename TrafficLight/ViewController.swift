//
//  ViewController.swift
//  TrafficLight
//
//  Created by Владимир Дмитриев on 25.01.24.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = redLightView.bounds.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.bounds.width / 2
        greenLightView.layer.cornerRadius = yellowLightView.bounds.width / 2
        // почему на разных устройствах скругление выглядит по разному?
        
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonDidTapped() {
        startButton.setTitle("NEXT", for: .normal)
        
        if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        } else if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        } else if greenLightView.alpha == 1 {
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        } else {
            redLightView.alpha = 1
        }
    }
    
}

