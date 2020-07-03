//
//  HistoryViewController.swift
//  FirstLesson
//
//  Created by Rustem Baltiyev on 6/30/20.
//  Copyright © 2020 Rustem Baltiyev. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

	@IBOutlet weak var tableView: UITableView!
	
	
	var arr = ViewController.historyArray
	
	
	
	
	override func viewDidLoad() {
        super.viewDidLoad()
		tableView.delegate = self
		tableView.dataSource = self
    }
    
	
}



extension HistoryViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return arr.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let exp = arr[indexPath.row]
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! HistoryCellTableViewCell
		
		cell.setExpression(expression: exp)
		return cell
	}
	
	
}
