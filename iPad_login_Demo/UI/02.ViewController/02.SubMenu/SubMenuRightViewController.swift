//
//  SubMenuRightViewController.swift
//  iPad_login_Demo
//
//  Created by NECVN on 31/05/2022.
//

import UIKit

class SubMenuRightViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var orderButton2: UIButton!
    
    @IBOutlet weak var orderButton1: UIView!
    @IBOutlet weak var dropButtonView: UIView!
    
    @IBOutlet weak var orderProofButton: UIButton!
    @IBOutlet weak var normalOrderButton: UIButton!
    @IBOutlet weak var weeklyOrderButton: UIButton!
    @IBOutlet weak var orderEntryButton: UIButton!
    
    @IBOutlet weak var centerView: UIView!
    @IBOutlet weak var rightSubTableView: UITableView!
    var data: [subMenuTBV] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElement()
        data = createData()
        
        rightSubTableView.delegate = self
        rightSubTableView.dataSource = self
        
        rightSubTableView.register(UINib(nibName: "SubMenuRightTableViewCell", bundle: nil), forCellReuseIdentifier: "SubMenuRightTableViewCell")
        
        // Do any additional setup after loading the view.
    }

    func setUpElement(){
        Utilities.styleView(orderButton1, radius: 5)
        Utilities.styleButton(orderButton2, 5)
        Utilities.styleButton(orderProofButton, 5)
        Utilities.styleButton(normalOrderButton, 5)
        Utilities.styleButton(weeklyOrderButton, 5)
        Utilities.styleButton(orderEntryButton, 5)
        Utilities.styleView(dropButtonView, radius: 5)
        centerView.backgroundColor = UIColor(red: 93/255.0, green: 153/255.0, blue: 215/255.0, alpha: 1)
    }
    
    func createData() -> [subMenuTBV]{
        var temp : [subMenuTBV] = []
        
        let data1 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "81.79%")
        let data2 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "81.79%")
        let data3 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "81.79%")
        let data4 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "81.79%")
        let data5 = subMenuTBV(dayNum: "05/27", daySim: "日", numberOfOrders: "197,523", price: "1,345", budget: "81.79%")
        let data6 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "")
        let data7 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "")
        let data8 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "")
        let data9 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "")
        let data10 = subMenuTBV(dayNum: "05/27", daySim: "日", numberOfOrders: "197,523", price: "1,345", budget: "")
        let data11 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "")
        let data12 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "")
        let data13 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "")
        let data14 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "")
        let data15 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "")
        
        temp.append(data1)
        temp.append(data2)
        temp.append(data3)
        temp.append(data4)
        temp.append(data5)
        temp.append(data6)
        temp.append(data7)
        temp.append(data8)
        temp.append(data9)
        temp.append(data10)
        temp.append(data11)
        temp.append(data12)
        temp.append(data13)
        temp.append(data14)
        temp.append(data15)
        
        return temp
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubMenuRightTableViewCell", for: indexPath) as! SubMenuRightTableViewCell
        let data = data[indexPath.row]
        cell.setRightSubMenu(cell: data)
        
        if indexPath.row % 2 == 0{
            if indexPath.row == 6{
                cell.backgroundColor = UIColor(red: 93/255.0, green: 153/255.0, blue: 215/255.0, alpha: 1)
                cell.daySim.textColor =  .white
                cell.dayNum.textColor =  .white
                cell.numberOfOrders.textColor =  .white
                cell.price.textColor =  .white
                cell.budget.textColor =  .white
                
            }else{
                cell.dayView.backgroundColor = UIColor.systemGray6
            }
        }
        else{
            cell.dayView.backgroundColor = UIColor.systemGray5
        }
        
        if cell.daySim.text == "日"{
            cell.daySim.textColor = .red
        }
        
        return cell
    }

}
