//
//  ViewController.swift
//  UISlider01
//
//  Created by Cliff Gurske on 11/7/17.
//  Copyright © 2017 Cliff Gurske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	// MARK: - View Did Load
	override func viewDidLoad() {
		super.viewDidLoad()
		//loads initial view with "Hello" alpha at current slider position. Using slider: UISlider! outlet.
		helloLabel.textColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: CGFloat(slider.value))
	}
	
	// MARK: - Outlets
	@IBOutlet weak var helloLabel: UILabel!
	@IBOutlet weak var slider: UISlider!
	@IBOutlet var backgroundView: UIView!
	@IBOutlet weak var backgroundSlider: UISlider!
	
	
	
	
	
	// MARK: - Interactions
	@IBAction func dragSlider(_ sender: UISlider) {
		//testing: print("\(sender.value)")
		
		//using sender.value from slider to alter the alpha:
		helloLabel.textColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: CGFloat(sender.value))
		}
	
	@IBAction func backgroundSlider(_ sender: UISlider) {
		//change color of background: rainbow colors.
		backgroundView.backgroundColor = UIColor(hue: CGFloat(sender.value), saturation: CGFloat(sender.value), brightness: CGFloat(sender.value), alpha: CGFloat(sender.value))
	}
	
	
	

}

