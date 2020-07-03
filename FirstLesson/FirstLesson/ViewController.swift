//
//  ViewController.swift
//  FirstLesson
//
//  Created by Rustem Baltiyev on 6/26/20.
//  Copyright © 2020 Rustem Baltiyev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var result: UILabel!
	@IBOutlet var operationButtons: [RoundButton]!
	
	var currentNumber = 0.0
	var a = 0.0
	var opr = 0
	static var historyArray = [String]()
	var operationDidEnd = false
	
	
	@IBOutlet weak var floatPoint: UIButton!
	
	@IBAction func numPad(_ sender: UIButton) {
		if operationDidEnd {
			clear(sender)
			operationDidEnd = false
		}
		
		if sender.tag == 999 {
			result.text? += "."
			sender.isEnabled = false
			sender.backgroundColor = .black
		}
		else if result.text == "0" {
			result.text = ""
			result.text? += String(sender.tag)
		}
		else {
			result.text? += String(sender.tag)
		}
		
		currentNumber = Double(result.text!)!
		
	}
	
	@IBAction func buttonIsSelected(_ sender: RoundButton) {
		sender.backgroundColor = .white
		sender.setTitleColor(.orange, for: .normal)
	}
	
	@IBAction func clear(_ sender: UIButton) {
		result.text = "0"
		currentNumber = 0.0
		opr = 0
		a = 0.0
		
		floatPoint.isEnabled = true
		floatPoint.backgroundColor = .darkGray
	}
	
	@IBAction func operation(_ sender: UIButton) {
		switch sender.tag {
		case 994:
			a = currentNumber
			opr = 1
			
			result.text = ""
			currentNumber = 0.0
			
			floatPoint.isEnabled = true
			floatPoint.backgroundColor = .darkGray
		case 995:
			a = currentNumber
			opr = 2
			
			result.text = ""
			currentNumber = 0.0
			
			floatPoint.isEnabled = true
			floatPoint.backgroundColor = .darkGray
		case 996:
			a = currentNumber
			opr = 3
			
			result.text = ""
			currentNumber = 0.0
			
			floatPoint.isEnabled = true
			floatPoint.backgroundColor = .darkGray
		case 997:
			a = currentNumber
			opr = 4
			
			result.text = ""
			currentNumber = 0.0
			
			floatPoint.isEnabled = true
			floatPoint.backgroundColor = .darkGray
		case 998:
			result.text = "\(currentNumber.squareRoot())"
			ViewController.historyArray.insert("√\(currentNumber) = \(result.text!)", at: 0)
			opr = 0
		case 993:
			operationDidEnd = true
			
			
			if opr == 1 {
				result.text = "\(a + currentNumber)"
				currentNumber = Double(result.text!)!
				
				ViewController.historyArray.insert("\(a) + \(currentNumber) = \(result.text!)", at: 0)
				
				a = 0
			} else if opr == 2 {
				result.text = "\(a - currentNumber)"
				currentNumber = Double(result.text!)!
				
				ViewController.historyArray.insert("\(a) - \(currentNumber) = \(result.text!)", at: 0)
				
				a = 0.0
			} else if opr == 3 {
				result.text = "\(a * currentNumber)"
				currentNumber = Double(result.text!)!
				
				ViewController.historyArray.insert("\(a) * \(currentNumber) = \(result.text!)", at: 0)
				
				a = 0.0
			} else if opr == 4 {
				if currentNumber != 0 {
					result.text = "\(a / currentNumber)"
					currentNumber = Double(result.text!)!
					
					ViewController.historyArray.insert("\(a) / \(currentNumber) = \(result.text!)", at: 0)
					
					a = 0.0
				} else {
					result.text = "Error"
					a = 0
				}
			}
			
			floatPoint.isEnabled = false
			floatPoint.backgroundColor = .black
			
			for button in operationButtons {
				button.backgroundColor = .systemOrange
				button.setTitleColor(.white, for: .normal)
			}
		default:
			result.text = "Error"
		}
	}
	
	
	
	@IBAction func showHistory(_ sender: UIButton) {
		let historyVC = storyboard?.instantiateViewController(identifier: "history") as! HistoryViewController
		present(historyVC, animated: true)
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
}
