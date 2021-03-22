//
//  ViewController.swift
//  HW1Task2
//
//  Created by admin on 21.03.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var trafficRedColor: UIView!
    @IBOutlet var trafficYellowColor: UIView!
    @IBOutlet var trafficGreenColor: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficRedColor.layer.cornerRadius = trafficRedColor.frame.size.width / 2
        trafficRedColor.alpha = 0.3
        trafficYellowColor.layer.cornerRadius = trafficYellowColor.frame.size.width / 2
        trafficYellowColor.alpha = 0.3
        trafficGreenColor.layer.cornerRadius = trafficGreenColor.frame.size.width / 2
        trafficGreenColor.alpha = 0.3
    }
    @IBAction func stsrtButtonPressed() {
        if trafficRedColor.alpha == 1 {
            trafficYellowColor.alpha = 1
            trafficRedColor.alpha = 0.3
        } else if trafficYellowColor.alpha == 1 {
            trafficGreenColor.alpha = 1
            trafficYellowColor.alpha = 0.3
        } else {
            trafficRedColor.alpha = 1
            startButton.setTitle( "NEXT", for: .normal)
            trafficGreenColor.alpha = 0.3
        }
    }
    

}

