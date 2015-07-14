//
//  TestCollectionViewController.swift
//  NFTopMenuController
//
//  Created by Niklas Fahl on 12/17/14.
//  Copyright (c) 2014 Niklas Fahl. All rights reserved.
//

import UIKit

let reuseIdentifier = "MoodCollectionViewCell"

class TestCollectionViewController: UICollectionViewController{
    
    var moodArray : [String] = ["Relaxed", "Playful", "Happy", "Adventurous", "Wealthy", "Hungry", "Loved", "Active"]
    var backgroundPhotoNameArray : [String] = ["mood1.jpg", "mood2.jpg", "mood3.jpg", "mood4.jpg", "mood5.jpg", "mood6.jpg", "mood7.jpg", "mood8.jpg"]
    var photoNameArray : [String] = ["relax.png", "playful.png", "happy.png", "adventurous.png", "wealthy.png", "hungry.png", "loved.png", "active.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView!.registerNib(UINib(nibName: "MoodCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        //#warning Incomplete method implementation -- Return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //#warning Incomplete method implementation -- Return the number of items in the section
        return 6
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell : MoodCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! MoodCollectionViewCell
    
        
        
        // Configure the cell
        cell.backgroundImageView.image = UIImage(named: backgroundPhotoNameArray[indexPath.row])
        cell.moodTitleLabel.text = moodArray[indexPath.row]
       // cell.moodIconImageView.image = UIImage(named: photoNameArray[indexPath.row])
    
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize{
        
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        let width = (screenWidth - 60 )/2
        let height = (screenHeight-190)/3
        
        return CGSize(width: width, height: height)
        
    }
   
}
