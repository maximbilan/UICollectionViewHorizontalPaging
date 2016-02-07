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

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

	let reuseIdentifier = "collectionViewCellId"
	
	@IBOutlet weak var collectionView: UICollectionView!
	
	func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
		return 1
	}
	
	func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 20
	}
	
	func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CollectionViewCell
		
		cell.imageView.backgroundColor = UIColor.randomColor()
		
		return cell
	}

}
