//
//  HeaderView.swift
//  SJISIpadEOB
//
//  Created by NEC on 2022/01/28.
//  Copyright © 2022 NECVN. All rights reserved.
//

import UIKit

final class Header: CustomeNibView {
    
    @IBOutlet weak var backImageView: UIImageView!

    func configure(with screenTitle: ScreenTitle){
        switch screenTitle {
        case .subMenu:
            backImageView.isHidden = false
        case .orderMenu:
            backImageView.isHidden = true
        }
    }
    
}
