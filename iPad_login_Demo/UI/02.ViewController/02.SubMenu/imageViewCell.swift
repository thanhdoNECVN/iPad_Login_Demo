//
//  imageViewCell.swift
//  iPad_login_Demo
//
//  Created by NECVN on 06/06/2022.
//

import UIKit

class imageViewCell: UITableViewCell {

    @IBOutlet weak var morningImage1: UIImageView!
    @IBOutlet weak var afterImage1: UIImageView!
    
    @IBOutlet weak var morningImage2: UIImageView!
    @IBOutlet weak var afterImage2: UIImageView!
    
    @IBOutlet weak var morningImage3: UIImageView!
    @IBOutlet weak var afterImage3: UIImageView!
    
    @IBOutlet weak var morningImage4: UIImageView!
    @IBOutlet weak var afterImage4: UIImageView!
    
    @IBOutlet weak var morningImage5: UIImageView!
    @IBOutlet weak var afterImage5: UIImageView!
    
    @IBOutlet weak var morningImage6: UIImageView!
    @IBOutlet weak var afterImage6: UIImageView!
    
    @IBOutlet weak var morningImage7: UIImageView!
    @IBOutlet weak var afterImage7: UIImageView!
    
    
    func setImageData(imageCell: [SecondRightSubMenuModel]){
        morningImage1.image = UIImage(systemName: predict_image(img: (imageCell[0].weather_morning)))
        afterImage1.image = UIImage(systemName: predict_image(img: (imageCell[0].weather_after)))
        
        morningImage2.image = UIImage(systemName: predict_image(img: (imageCell[1].weather_morning)))
        afterImage2.image = UIImage(systemName: predict_image(img: (imageCell[1].weather_after)))
        
        morningImage3.image = UIImage(systemName: predict_image(img: (imageCell[2].weather_morning)))
        afterImage3.image = UIImage(systemName: predict_image(img: (imageCell[2].weather_after)))
        
        morningImage4.image = UIImage(systemName: predict_image(img: (imageCell[3].weather_morning)))
        afterImage4.image = UIImage(systemName: predict_image(img: (imageCell[3].weather_after)))
        
        morningImage5.image = UIImage(systemName: predict_image(img: (imageCell[4].weather_morning)))
        afterImage5.image = UIImage(systemName: predict_image(img: (imageCell[4].weather_after)))
        
        morningImage6.image = UIImage(systemName: predict_image(img: (imageCell[5].weather_morning)))
        afterImage6.image = UIImage(systemName: predict_image(img: (imageCell[5].weather_after)))
        
        morningImage7.image = UIImage(systemName: predict_image(img: (imageCell[6].weather_morning)))
        afterImage7.image = UIImage(systemName: predict_image(img: (imageCell[6].weather_after)))
        
    }
    private func predict_image(img: String) -> String{
        if img == "00"{
            return "sun.max"
        }else if img == "01"{
            return "cloud.rain"
        }else{
            return "tropicalstorm"
        }
    }

}
