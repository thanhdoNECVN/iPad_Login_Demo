//
//  Utilities.swift
//  iPad_login_Demo
//
//  Created by NECVN on 16/05/2022.
//

import Foundation
import UIKit

class Utilities {
    static func styleTextFiel(_ textField: UITextField){
        textField.attributedPlaceholder = NSAttributedString(string: textField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : UIColor.opaqueSeparator])
    }

    static func styleButton(_ button: UIButton, _ radius: Int){
        button.layer.cornerRadius = CGFloat(radius)
        button.layer.masksToBounds = true

    }

    static func hoverColor(_ view1: UIView, _ view2: UIView, _ view3: UIView){
        view1.backgroundColor = UIColor.systemBlue
        view2.backgroundColor = UIColor.systemBlue
        view3.backgroundColor = UIColor.systemBlue
    }
    static func hoverColorDedault(_ view1: UIView, _ view2: UIView, _ view3: UIView){
        view1.backgroundColor = UIColor.systemGray2
        view2.backgroundColor = UIColor.systemGray2
        view3.backgroundColor = UIColor.systemGray2
    }
    
    static func styleView(_ view: UIView, radius: Int){
        view.layer.cornerRadius = CGFloat(radius)
        view.layer.masksToBounds = true
    }
    
    static func styleLabel(_ label: UILabel, radius: Int){
        label.layer.cornerRadius = CGFloat(radius)
        label.layer.masksToBounds = true
    }
    static func colorCell(cell: UITableViewCell ,index: Int){
        if(index % 2 == 0){
            cell.backgroundColor = UIColor.systemGray6
        } else{
            cell.backgroundColor = UIColor.systemGray5
        }
    }
    
    static func formatCellBackroundOnClick(cell: UITableViewCell){
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor(red: 44/255.0, green: 105/255.0, blue: 156/255.0, alpha: 1)
        cell.selectedBackgroundView = backgroundView
    }
    static func splitDate(edit_date: String, index: Int) -> String{
        let splitedString = edit_date.components(separatedBy:["(",")"])
        return splitedString[index]
    }
}
