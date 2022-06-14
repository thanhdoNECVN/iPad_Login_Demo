//
//  grapthMenuDayCell.swift
//  iPad_login_Demo
//
//  Created by NECVN on 06/06/2022.
//

import UIKit

class grapthMenuDayCell: UITableViewCell {
    @IBOutlet weak var day1Lable: UILabel!
    @IBOutlet weak var day2Lable: UILabel!
    @IBOutlet weak var day3Lable: UILabel!
    @IBOutlet weak var day4Lable: UILabel!
    @IBOutlet weak var day5Lable: UILabel!
    @IBOutlet weak var day6Lable: UILabel!
    @IBOutlet weak var day7Lable: UILabel!
    
    func setDayData(dayCell: [SecondRightSubMenuModel]){
        day1Lable.text = dayCell[0].edit_date
        day2Lable.text = dayCell[1].edit_date
        day3Lable.text = dayCell[2].edit_date
        day4Lable.text = dayCell[3].edit_date
        day5Lable.text = dayCell[4].edit_date
        day6Lable.text = dayCell[5].edit_date
        day7Lable.text = dayCell[6].edit_date
    }
}
