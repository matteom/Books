//
//  ViewController.swift
//  Books
//
//  Created by Matteo Manferdini on 05/11/2018.
//  Copyright © 2018 Matteo Manferdini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		#warning("Use either this code or the views in the storyboard, or you will have a duplicated view hierarchy")
		
		let coverImageView = ShadowedImageView(frame: .zero)
		coverImageView.image = #imageLiteral(resourceName: "Crime and punishment")
		coverImageView.contentMode = .scaleAspectFit
		view.addSubview(coverImageView)
		
		let titleLabel = UILabel()
		titleLabel.text = "Crime and Punishment"
		titleLabel.font = UIFont.systemFont(ofSize: 24.0, weight: .medium)
		titleLabel.numberOfLines = 0
		titleLabel.textAlignment = .center
		view.addSubview(titleLabel)
		
		let authorLabel = UILabel()
		authorLabel.text = "Fyodor Dostoevsky"
		authorLabel.font = UIFont.italicSystemFont(ofSize: 14.0)
		authorLabel.numberOfLines = 0
		authorLabel.textAlignment = .center
		view.addSubview(authorLabel)
		
		let translatorLabel = UILabel()
		translatorLabel.text = "Translated by: Michael McDonald"
		translatorLabel.font = UIFont.italicSystemFont(ofSize: 14.0)
		translatorLabel.numberOfLines = 0
		translatorLabel.textAlignment = .center
		view.addSubview(translatorLabel)
		
		let ratingLabel = UILabel()
		ratingLabel.text = "★★★★☆"
		ratingLabel.font = UIFont.systemFont(ofSize: 14.0)
		ratingLabel.numberOfLines = 0
		ratingLabel.textAlignment = .center
		view.addSubview(ratingLabel)
		
		view.layoutMargins = UIEdgeInsets(top: 24.0, left: 24.0, bottom: 24.0, right: 24.0)
		let margins = view.layoutMarginsGuide
		
		coverImageView.translatesAutoresizingMaskIntoConstraints = false
		coverImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		coverImageView.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
		coverImageView.heightAnchor.constraint(equalToConstant: 225.0).isActive = true
		coverImageView.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
		
		titleLabel.translatesAutoresizingMaskIntoConstraints = false
		titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		titleLabel.topAnchor.constraint(equalTo: coverImageView.bottomAnchor, constant: 32.0).isActive = true
		titleLabel.leadingAnchor.constraint(greaterThanOrEqualTo: margins.leadingAnchor).isActive = true
		titleLabel.trailingAnchor.constraint(greaterThanOrEqualTo: margins.trailingAnchor).isActive = true

		authorLabel.translatesAutoresizingMaskIntoConstraints = false
		authorLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor).isActive = true
		authorLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8.0).isActive = true
		authorLabel.leadingAnchor.constraint(greaterThanOrEqualTo: margins.leadingAnchor).isActive = true
		authorLabel.trailingAnchor.constraint(greaterThanOrEqualTo: margins.trailingAnchor).isActive = true
		
		translatorLabel.translatesAutoresizingMaskIntoConstraints = false
		translatorLabel.centerXAnchor.constraint(equalTo: authorLabel.centerXAnchor).isActive = true
		translatorLabel.topAnchor.constraint(equalTo: authorLabel.bottomAnchor, constant: 8.0).isActive = true
		translatorLabel.leadingAnchor.constraint(greaterThanOrEqualTo: margins.leadingAnchor).isActive = true
		translatorLabel.trailingAnchor.constraint(greaterThanOrEqualTo: margins.trailingAnchor).isActive = true
		
		ratingLabel.translatesAutoresizingMaskIntoConstraints = false
		ratingLabel.centerXAnchor.constraint(equalTo: translatorLabel.centerXAnchor).isActive = true
		ratingLabel.topAnchor.constraint(equalTo: translatorLabel.bottomAnchor, constant: 8.0).isActive = true
		ratingLabel.leadingAnchor.constraint(greaterThanOrEqualTo: margins.leadingAnchor).isActive = true
		ratingLabel.trailingAnchor.constraint(greaterThanOrEqualTo: margins.trailingAnchor).isActive = true
	}
}

