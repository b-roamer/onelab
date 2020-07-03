//
//  HistoryCellTableViewCell.swift
//  FirstLesson
//
//  Created by Rustem Baltiyev on 6/30/20.
//  Copyright © 2020 Rustem Baltiyev. All rights reserved.
//

import UIKit

class HistoryCellTableViewCell: UITableViewCell {
	

	@IBOutlet weak var entry: UILabel!
	
	func setExpression(expression: String) {
		entry.text = expression
	}
}
