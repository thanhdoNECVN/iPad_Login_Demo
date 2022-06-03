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
    
    func setRightCell(rightCell: RightOrderMenuModel){
        RightTableViewLabel.text = rightCell.sect_code
        RightTableViewNew.isHidden = checkHiddenView(code: rightCell.new_plan)
        RightTableViewNew.layer.masksToBounds = true
        RightTableViewNew.layer.cornerRadius = cornerRadius
    }
    
    func checkHiddenView(code: String) -> Bool{
        if code == "0"{
            return false
        }
        else{
            return true
        }
    }
}
