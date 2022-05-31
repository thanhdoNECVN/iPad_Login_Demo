//
//  LeftTableViewCell.swift
//  iPad_login_Demo
//
//  Created by NECVN on 17/05/2022.
//

import UIKit

class RightTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var RightTableViewLabel: UILabel!
    @IBOutlet weak var RightTableViewNew: UIView!
    
    let cornerRadius = 10.0
    
    func setRightCell(rightCell: RightTBV){
        RightTableViewLabel.text = rightCell.label
        RightTableViewNew.isHidden = rightCell.hiden
        RightTableViewNew.layer.masksToBounds = true
        RightTableViewNew.layer.cornerRadius = cornerRadius
    }
}
