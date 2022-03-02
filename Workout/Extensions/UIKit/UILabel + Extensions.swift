//
//  UILabel + Extensions.swift
//  Workout
//
//  Created by Anton Makarov on 21.01.2022.
//

import UIKit

import UIKit

extension UILabel {
    convenience init(text: String = "") {
        self.init()
        
        self.text = text
        self.font = .robotoMedium14()
        self.textColor = .specialLightBrown
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
