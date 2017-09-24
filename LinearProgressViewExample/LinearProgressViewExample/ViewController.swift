//
//  ViewController.swift
//  LinearProgressViewExample
//
//  Created by Orkhan Alikhanov on 4/12/17.
//  Copyright © 2017 BiAtoms. All rights reserved.
//

import UIKit
import LinearProgressView

class ViewController: UIViewController {

    @IBOutlet var progressSlider: UISlider!
    @IBOutlet var barInsetSlider: UISlider!
    @IBOutlet var isCornerRoundedSwitch: UISwitch!
    
    @IBOutlet var linearProgressView: LinearProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        linearProgressView.animationDuration = 0.5
        
        progressSlider.addTarget(self, action: #selector(updateLinearProgressView), for: .valueChanged)
        barInsetSlider.addTarget(self, action: #selector(updateLinearProgressView), for: .valueChanged)
        isCornerRoundedSwitch.addTarget(self, action: #selector(updateLinearProgressView), for: .valueChanged)
    }
    
    @objc
    func updateLinearProgressView() {
        linearProgressView.setProgress( progressSlider.value, animated: true)
        linearProgressView.barInset =  CGFloat(barInsetSlider.value)
        linearProgressView.isCornersRounded = isCornerRoundedSwitch.isOn
    }
    @IBAction func didTapRandomColorButton(_ sender: Any) {
        linearProgressView.barColor = .random
        linearProgressView.trackColor = .random
    }
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}


extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1.0)
    }
}

