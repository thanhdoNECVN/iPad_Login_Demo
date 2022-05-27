//
//  CustomeNibView.swift
//  iPad_login_Demo
//
//  Created by NECVN on 24/05/2022.
//

import UIKit

class CustomeNibView: UIView {

    @IBOutlet var contentView: UIView!
    
    
    override init(frame: CGRect) {
        super.init(frame : frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    // ===========================
    // common init view
    // ===========================
    private func commonInit() {
     
        guard let nibName = NSStringFromClass(type(of: self)).components(separatedBy: ".").last,
              Bundle(for: type(of: self)).path(forResource: nibName, ofType: "nib") != nil
        else {
            fatalError("The nib file shoud have the same name as the name of its owner class")
        }
        Bundle(for: type(of: self)).loadNibNamed(nibName, owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
    }

}
