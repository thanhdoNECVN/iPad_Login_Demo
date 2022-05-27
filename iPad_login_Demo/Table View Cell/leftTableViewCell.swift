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
    
    
    func setLeftCell(leftCell: LeftTBV){
        dayNum.text = leftCell.dayNum
        daySim.text = leftCell.daySim
        image1.image = UIImage(systemName: leftCell.image1)
        image2.image = UIImage(systemName: leftCell.image2)
        highDegress.text = leftCell.highDegrees
        lowDegrees.text = leftCell.lowDegress
        numOfPeople.text = leftCell.numberOfPeople
        event.text = leftCell.event
        personImage.isHidden = false
    }
    
}
