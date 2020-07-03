//
//  RoundButton.swift
//  FirstLesson
//
//  Created by Rustem Baltiyev on 6/29/20.
//  Copyright © 2020 Rustem Baltiyev. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
    @IBInspectable var roundButton: Bool = false {
        didSet {
            if roundButton {
                layer.cornerRadius = frame.height / 2
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if roundButton {
            layer.cornerRadius = frame.height / 2
        }
    }
}
