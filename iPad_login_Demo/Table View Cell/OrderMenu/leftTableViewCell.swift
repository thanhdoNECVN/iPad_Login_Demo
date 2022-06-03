//
//  leftTableViewCell.swift
//  iPad_login_Demo
//
//  Created by NECVN on 26/05/2022.
//

import UIKit

class leftTableViewCell: UITableViewCell {

    @IBOutlet weak var image2View: UIView!
    @IBOutlet weak var image1View: UIView!
    @IBOutlet weak var dayNum: UILabel!
    @IBOutlet weak var daySim: UILabel!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var highDegress: UILabel!
    @IBOutlet weak var lowDegrees: UILabel!
    @IBOutlet weak var numOfPeople: UILabel!
    @IBOutlet weak var event: UILabel!
    @IBOutlet weak var personImage: UIImageView!
    
    
    func setLeftCell(leftCell: OrderMenuModel){
        dayNum.text = splitDate(edit_date: leftCell.edit_date, index: 0)
        daySim.text = splitDate(edit_date: leftCell.edit_date, index: 1)        //["05/02","今",""]
        image1.image = UIImage(systemName: predict_image(img: leftCell.weather_morning))
        image2.image = UIImage(systemName: predict_image(img: leftCell.weather_after))
        highDegress.text = leftCell.temp_high + "°C"
        lowDegrees.text = leftCell.temp_low + "°C"
        numOfPeople.text = leftCell.guest_qty
        event.text = leftCell.event
        personImage.isHidden = false
    }
    
    private func predict_image(img: String) -> String{
        if img == "00"{
            return "sun.max"
        }else{
            return "cloud.rain"
        }
    }
    
    private func splitDate(edit_date: String, index: Int) -> String{
        let splitedString = edit_date.components(separatedBy:["(",")"])
        return splitedString[index]
    }
}
