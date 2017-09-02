//
//  ViewController.swift
//  UICollectionViewHorizontalPaging
//
//  Created by Maxim Bilan on 2/5/16.
//  Copyright © 2016 Maxim Bilan. All rights reserved.
//

import UIKit

class CollectionViewCell : UICollectionViewCell {
	@IBOutlet weak var imageView: UIImageView!
}

class ViewController: UIViewController, UICollectionViewDataSource {

	let reuseIdentifier = "collectionViewCellId"
	
	@IBOutlet weak var collectionView: UICollectionView!
	
	func numberOfSections(in collectionView: UICollectionView) -> Int {
		return 1
	}
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 20
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
		
		cell.imageView.backgroundColor = UIColor.randomColor()
		
		return cell
	}

}
