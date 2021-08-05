//
//  ViewController.swift
//  CollectionView
//
//  Created by Anton on 05.08.2021.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionViewOne: UICollectionView!
    
    @IBOutlet weak var collectionViewTwo: UICollectionView!
    
    let arrayTemperature = ["temp.blackGreen", "temp.darkYellow","temp.green","temp.lightYellow","temp.orange","temp.red"]
    let arrayFace = ["bad","favorite","hate","nice","notPleasant","routine"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOne.delegate = self
        collectionViewOne.dataSource = self
        
        collectionViewTwo.delegate = self
        collectionViewTwo.dataSource = self
        
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ShowImageVC") as? ShowImageVC else {return}
        var currentSelectedImage:String!
        if collectionView == collectionViewOne{
              currentSelectedImage = arrayTemperature[indexPath.row]
            }
         
            if collectionView == collectionViewTwo{
              currentSelectedImage = arrayFace[indexPath.row]
            }
         
            vc.setImageName(name: currentSelectedImage)
            present(vc, animated: true, completion: nil)
          }

    
  
    
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    if collectionView == collectionViewOne {
      return arrayTemperature.count
    }
    if collectionView == collectionViewTwo {
      return arrayFace.count
    }
    return 0
  }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionViewOne{
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellOne", for: indexPath) as? Cell{
            let imageName = arrayTemperature[indexPath.row]
            cell.setTemperatureImage(tempName: imageName)
            return cell
        }
        }
        if collectionView == collectionViewTwo{
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellTwo", for: indexPath) as? Cell{
                let imageName = arrayFace[indexPath.row]
                cell.setFaceImage(faceName: imageName)
                return cell 
            }
        }
return UICollectionViewCell()

}

}
