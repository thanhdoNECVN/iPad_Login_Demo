//
//  RightTableViewCell.swift
//  iPad_login_Demo
//
//  Created by NECVN on 17/05/2022.
//

import UIKit

class RightTableViewCell: UITableViewCell {

    
    @IBOutlet weak var dayNumberView: UILabel!
    @IBOutlet weak var daySimbolView: UILabel!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var lowDegreesView: UILabel!
    @IBOutlet weak var highDegreesView: UILabel!
    @IBOutlet weak var numberOfCustomerView: UILabel!
    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var eventView: UILabel!
    
    func setRightCell(rightCell: RightTBV){
        dayNumberView.text = rightCell.dayNum
        daySimbolView.text = rightCell.daySim
        imageView1.image = UIImage(named: rightCell.image1)
        imageView2.image = UIImage(named: rightCell.image2)
        lowDegreesView.text = rightCell.lowDegress
        highDegreesView.text = rightCell.highDegrees
        numberOfCustomerView.text = rightCell.numberOfPeople
        personImageView.isHidden = false
        eventView.text = rightCell.event
    }
}
