//
//  UIStackView + Extensions.swift
//  Workout
//
//  Created by Anton Makarov on 16.01.2022.
//

import UIKit


extension UIStackView {
    
    convenience init(arrangeSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
    self.init(arrangedSubviews: arrangeSubviews)
    self.axis = axis
    self.spacing = spacing
    self.translatesAutoresizingMaskIntoConstraints = false
    }
    
}
