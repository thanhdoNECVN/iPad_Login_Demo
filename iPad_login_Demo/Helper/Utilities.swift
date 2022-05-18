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
}
