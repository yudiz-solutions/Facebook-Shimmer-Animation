//
//  DemoVC.swift
//  PlaceholderAnimation
//
//  Created by Yudiz on 19/06/18.
//  Copyright © 2018 Yudiz. All rights reserved.
//

import UIKit

/// DemoVC
class DemoVC: UIViewController {
    
    /// IBOutlet(s)
    @IBOutlet weak var gView: UIView!
    
    /// View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradientToView()
    }
}

// MARK: - Other Methods
extension DemoVC {
    
    func addGradientToView() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.white.cgColor, UIColor.clear.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.7, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.8)
        gradientLayer.frame = gView.bounds
        gView.layer.mask = gradientLayer
        
        let animation = CABasicAnimation(keyPath: "transform.translation.x")
        animation.duration = 1.5
        animation.fromValue = -gView.frame.size.width
        animation.toValue = gView.frame.size.width
        animation.repeatCount = .infinity
        
        gradientLayer.add(animation, forKey: "kevin1")
    }
}
