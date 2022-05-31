//
//  SubMenuRightTableViewCell.swift
//  iPad_login_Demo
//
//  Created by NECVN on 31/05/2022.
//

import UIKit

class SubMenuRightTableViewCell: UITableViewCell {

    @IBOutlet weak var dayView: UIView!
    @IBOutlet weak var dayNum: UILabel!
    @IBOutlet weak var daySim: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var numberOfOrders: UILabel!
    @IBOutlet weak var budget: UILabel!
    
    func setRightSubMenu(cell: subMenuTBV){
        daySim.text = cell.daySim
        dayNum.text = cell.dayNum
        price.text = cell.price
        numberOfOrders.text = cell.numberOfOrders
        budget.text = cell.budget
    }
    
}
