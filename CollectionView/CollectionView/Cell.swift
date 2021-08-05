//
//  Cell.swift
//  CollectionView
//
//  Created by Anton on 05.08.2021.
//

import UIKit

class Cell: UICollectionViewCell {
    
    @IBOutlet weak var temperatureImage: UIImageView!
   
    @IBOutlet weak var faceImage: UIImageView!
    
    //Метод который устанавливает изображение в ImageView
    func setTemperatureImage(tempName:String){
        temperatureImage.image = UIImage(named: tempName)
    }
    
    func setFaceImage(faceName:String){
        faceImage.image = UIImage(named: faceName)
    }
    
}
