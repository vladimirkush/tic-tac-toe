//
//  ViewController.swift
//  tic-tac-toe
//
//  Created by Admin on 04/03/2016.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var currentPlayer = "X"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
         let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CellID", forIndexPath: indexPath) as! CollectionViewCell
        cell.lblCelltext.text = "\(indexPath.row), \(indexPath.section)"
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("Row \(indexPath.row), section: \(indexPath.section)")
        let cell = collectionView.cellForItemAtIndexPath(indexPath) as! CollectionViewCell
        if currentPlayer == "X"{
            cell.lblCelltext.text="X"
            currentPlayer="O"
        }else if currentPlayer == "O"{
            cell.lblCelltext.text="O"
            currentPlayer="X"
        }
        //NSiindexpath is an index object
    }
    
    

}

