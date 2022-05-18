//
//  LeftTableViewCell.swift
//  iPad_login_Demo
//
//  Created by NECVN on 17/05/2022.
//

import UIKit

class LeftTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var leftTableViewLabel: UILabel!
    @IBOutlet weak var leftTableViewNew: UIView!
    
    let cornerRadius = 10.0
    
    func setLeftCell(leftCell: LeftTBV){
        leftTableViewLabel.text = leftCell.label
        leftTableViewNew.isHidden = leftCell.hiden
        leftTableViewNew.layer.masksToBounds = true
        leftTableViewNew.layer.cornerRadius = cornerRadius
    }
}
