//
//  SubMenuHomeViewController.swift
//  iPad_login_Demo
//
//  Created by NECVN on 28/05/2022.
//

import UIKit

class SubMenuHomeViewController: BaseViewController {
    
    @IBOutlet weak var leftViewContainer: UIView!
    private lazy var subMenuLeftController = SubMenuLeftViewController()
    
    @IBOutlet weak var rightViewContainer: UIView!
    private lazy var subMenuRightController = SubMenuRightViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElement()
    }
    
    func setUpElement(){
        headerView.configure(with: .subMenu)
        install(subMenuLeftController, toContainerView: leftViewContainer)
        install(subMenuRightController, toContainerView: rightViewContainer)
    }
    

}
