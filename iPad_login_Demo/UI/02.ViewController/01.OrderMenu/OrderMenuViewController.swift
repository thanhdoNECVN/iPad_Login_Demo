//
//  OrderMenuViewController.swift
//  iPad_login_Demo
//
//  Created by NECVN on 24/05/2022.
//

import UIKit

class OrderMenuViewController: BaseViewController{
        
    @IBOutlet weak var subLeftMenuViewContainer: UIView!
    private lazy var subLeftMenuController = SubLeftMenu_ViewController()
    
    @IBOutlet weak var leftBottomViewContainer: UIView!
    private lazy var leftBottomController = BottomLeftViewController()
    
    @IBOutlet weak var subRightMenuViewContainer: UIView!
    private lazy var subRightMenuController = SubRightTableViewController()
    
    @IBOutlet weak var rightOfRightViewContainer: UIView!
    private lazy var rightOfRightViewController = RightViewOfRightViewController()
    
    var leftData : [LeftTBV] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupChildren()
        
        
        // Do any additional setup after loading the view.
    }
    
    func setupChildren(){
        
        headerView.configure(with: .orderMenu)
        install(subLeftMenuController, toContainerView: subLeftMenuViewContainer)
        install(leftBottomController, toContainerView: leftBottomViewContainer)
        install(subRightMenuController, toContainerView: subRightMenuViewContainer)
        install(rightOfRightViewController, toContainerView: rightOfRightViewContainer)
        
    }
    

}
