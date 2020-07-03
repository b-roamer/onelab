//
//  PinConstraints.swift
//  FirstLesson
//
//  Created by Rustem Baltiyev on 6/30/20.
//  Copyright © 2020 Rustem Baltiyev. All rights reserved.
//

import UIKit

extension UIView {
	func pin(to superView: UIView) {
		translatesAutoresizingMaskIntoConstraints = false
		topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
		leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
		trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
		bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
		
	}
}
