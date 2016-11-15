//
//  ViewController.swift
//  HelloName
//
//  Created by Ryan Burns on 11/2/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet var viewCollection: [UIView]!
	
	@IBOutlet weak var helloLabel: UILabel!
	@IBOutlet weak var nameTextField: UITextField!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		self.viewCollection.forEach { (view) in
			
			view.alpha = 0
		}
		
		print("View did load")
	}

	override func viewDidAppear(_ animated: Bool) {
		
		UIView.animate(withDuration: 1.5) { 
			
			self.viewCollection.forEach({ (view) in
				
				view.alpha = 1
			})
		}
		
		print("View did appear")
	}
	
	@IBAction func onNameChanged(_ sender: AnyObject) {
		
		updateLabel()
	}
	@IBAction func onTapGo(_ sender: AnyObject) {
		
		print("Button Tapped!")
		
		updateLabel()
	}
	
	func updateLabel()
	{
		if let name = self.nameTextField.text
		{
			self.helloLabel.text = "Hello \(name)"
		}
	}
}

