//
//  GradientView.swift
//  SmackChat
//
//  Created by Admin on 7/24/1396 AP.
//  Copyright © 1396 Ali. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8588235294, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        //age ye done topColor.cgColor be array ezafe konim 3 khate rangi mibinim
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        //age x -> startPoint va x -> endPoint ro 0.5 bezarim ranga a bala be paein mishan
        //age hamin karo ba y anjam bedim ranga be sorati amodi mishan
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
