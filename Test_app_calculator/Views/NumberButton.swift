//
//  NumberButton.swift
//  Test_app_calculator
//
//  Created by Heltyr911 on 5/8/20.
//  Copyright © 2020 heltyr. All rights reserved.
//

import UIKit


class NumberButton: UIButton{
    override func draw(_ rect: CGRect) {
        self.layer.masksToBounds = true
        self.clipsToBounds = true
        self.layer.cornerRadius = 5
        self.tintColor = .red
        self.dropShadow(color: UIColor.orange.withAlphaComponent(0.5) , opacity: 0.6, offSet: CGSize(width: 0, height: 10), radius: 25, scale: true)
    }
}
