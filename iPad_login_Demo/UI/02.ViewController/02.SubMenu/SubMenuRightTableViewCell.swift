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
    
    func setRightSubMenu(cell: RightSubMenuModel){
        daySim.text = Utilities.splitDate(edit_date: cell.edit_date, index: 1)
        dayNum.text = Utilities.splitDate(edit_date: cell.edit_date, index: 0)
        price.text = cell.order_cost
        numberOfOrders.text = cell.order_qty
        budget.text = cell.plan_ratio
    }
    
}
