//
//  SubMenuRightViewController.swift
//  iPad_login_Demo
//
//  Created by NECVN on 31/05/2022.
//

import UIKit

class SubMenuRightViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var orderButton2View: UIView!
    @IBOutlet weak var orderButton2ImageView: UIImageView!
    @IBOutlet weak var orderButton2: UIButton!
    
    
    @IBOutlet weak var orderButton1View: UIView!
    @IBOutlet weak var orderButton1ImageView: UIImageView!
    @IBOutlet weak var orderButton1: UIButton!
    
    @IBOutlet weak var dropButtonView: UIView!
    
    @IBOutlet weak var orderProofButton: UIButton!
    @IBOutlet weak var normalOrderButton: UIButton!
    @IBOutlet weak var weeklyOrderButton: UIButton!
    @IBOutlet weak var orderEntryButton: UIButton!
    
    @IBOutlet weak var centerView: UIView!
    @IBOutlet weak var rightSubTableView: UITableView!
    @IBOutlet weak var bodyView: UIView!
    
    private lazy var subGrapthViewController = SubGrapthViewController()
    var data1 = [RightSubMenuModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElement()
        
        rightSubTableView.delegate = self
        rightSubTableView.dataSource = self
        
        rightSubTableView.register(UINib(nibName: "SubMenuRightTableViewCell", bundle: nil), forCellReuseIdentifier: "SubMenuRightTableViewCell")
        rightSubTableView.register(UINib(nibName: "grapthMenuDayCell", bundle: nil), forCellReuseIdentifier: "grapthMenuDayCell")
        
        Task{
            let subRightMenuData = await getData(url: "http://127.0.0.1:8000/Sub_Menu")
            self.data1 = subRightMenuData

            DispatchQueue.main.async {
                self.rightSubTableView.reloadData()
            }
        }
//
        // Do any additional setup after loading the view.
    }
    
    func getData(url: String) async -> [RightSubMenuModel]{
        guard let url = URL(string: url) else { return[] }
        
        do{
            let (data,_) = try await URLSession.shared.data(from: url)
            let subMenu = try JSONDecoder().decode([RightSubMenuModel].self, from: data)
            return subMenu
        }catch{
            return []
        }
        
    }
    
    

    func setUpElement(){
        Utilities.styleView(orderButton1View, radius: 5)
        Utilities.styleView(orderButton2View, radius: 5)
        Utilities.styleButton(orderProofButton, 5)
        Utilities.styleButton(normalOrderButton, 5)
        Utilities.styleButton(weeklyOrderButton, 5)
        Utilities.styleButton(orderEntryButton, 5)
        Utilities.styleView(dropButtonView, radius: 5)
        centerView.backgroundColor = UIColor(red: 93/255.0, green: 153/255.0, blue: 215/255.0, alpha: 1)
        
    }
    
//    func createData() -> [subMenuTBV]{
//        var temp : [subMenuTBV] = []
//        
//        let data1 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "81.79%")
//        let data2 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "81.79%")
//        let data3 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "81.79%")
//        let data4 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "81.79%")
//        let data5 = subMenuTBV(dayNum: "05/27", daySim: "日", numberOfOrders: "197,523", price: "1,345", budget: "81.79%")
//        let data6 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "")
//        let data7 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "")
//        let data8 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "")
//        let data9 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "")
//        let data10 = subMenuTBV(dayNum: "05/27", daySim: "日", numberOfOrders: "197,523", price: "1,345", budget: "")
//        let data11 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "")
//        let data12 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "")
//        let data13 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "")
//        let data14 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "")
//        let data15 = subMenuTBV(dayNum: "05/27", daySim: "今", numberOfOrders: "197,523", price: "1,345", budget: "")
//        
//        temp.append(data1)
//        temp.append(data2)
//        temp.append(data3)
//        temp.append(data4)
//        temp.append(data5)
//        temp.append(data6)
//        temp.append(data7)
//        temp.append(data8)
//        temp.append(data9)
//        temp.append(data10)
//        temp.append(data11)
//        temp.append(data12)
//        temp.append(data13)
//        temp.append(data14)
//        temp.append(data15)
//        
//        return temp
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubMenuRightTableViewCell", for: indexPath) as! SubMenuRightTableViewCell
        tableView.isScrollEnabled = false
        let data = data1[indexPath.row]
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

    @IBAction func Button2Tapped(_ sender: Any) {
//        tappedButton = "button2"
        install(subGrapthViewController, toContainerView: bodyView)
        configureButton(button: "button2")

        
       
        
    }
    
    @IBAction func Button1Tapped(_ sender: Any) {
//        tappedButton = "button1"
        subGrapthViewController.uninstall()
        configureButton(button: "button1")
        
    }
    func configureButton(button: String){
        if button == "button2"{
            orderButton2View.backgroundColor = .white
            orderButton2.tintColor = .black
            orderButton2ImageView.alpha = 0
            
            orderButton1View.backgroundColor = UIColor(red: 50/255.0, green: 57/255.0, blue: 64/255.0, alpha: 1)
            orderButton1.tintColor = .white
            orderButton1ImageView.alpha = 1
        }
        if button == "button1"{
            orderButton1View.backgroundColor = .white
            orderButton1.tintColor = .black
            orderButton1ImageView.alpha = 0
            
            orderButton2View.backgroundColor = UIColor(red: 50/255.0, green: 57/255.0, blue: 64/255.0, alpha: 1)
            orderButton2.tintColor = .white
            orderButton2ImageView.alpha = 1
           
        }
    }
    
}
