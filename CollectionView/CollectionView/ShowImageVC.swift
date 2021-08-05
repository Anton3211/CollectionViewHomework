//
//  ShowImageVC.swift
//  CollectionView
//
//  Created by Anton on 05.08.2021.
//

import UIKit

class ShowImageVC: UIViewController {

    @IBOutlet weak var currentImage: UIImageView!
    
    
    var imageName:String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        currentImage.image = UIImage(named: imageName)
        
    }
    
    
    
    func setImageName(name:String){
        imageName = name
    }
    
    
    
    
    
   
    

    

}
