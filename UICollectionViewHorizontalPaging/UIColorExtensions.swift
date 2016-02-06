//
//  UIColorExtensions.swift
//  UICollectionViewHorizontalPaging
//
//  Created by Maxim on 2/6/16.
//  Copyright © 2016 Maxim Bilan. All rights reserved.
//

import UIKit

extension UIColor {
	class func randomColor() -> UIColor {
		
		let hue = CGFloat(arc4random() % 100) / 100
		let saturation = CGFloat(arc4random() % 100) / 100
		let brightness = CGFloat(arc4random() % 100) / 100
		
		return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1.0)
	}
}