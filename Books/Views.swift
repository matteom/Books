//
//  Views.swift
//  Books
//
//  Created by Matteo Manferdini on 07/11/2018.
//  Copyright © 2018 Matteo Manferdini. All rights reserved.
//

import UIKit

@IBDesignable
class ShadowedImageView: UIImageView {
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		setUp()
	}
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setUp()
	}
	
	override func prepareForInterfaceBuilder() {
		super.prepareForInterfaceBuilder()
		setUp()
	}
	
	func setUp() {
		layer.shadowColor = UIColor.gray.cgColor
		layer.shadowOffset = CGSize(width: 0, height: 5.0)
		layer.shadowOpacity = 0.5
		layer.shadowRadius = 10.0
		layer.cornerRadius = 2.0
	}
}
