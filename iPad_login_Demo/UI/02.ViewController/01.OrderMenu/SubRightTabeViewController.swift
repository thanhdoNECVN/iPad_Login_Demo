//
//  SubRightTabeViewController.swift
//  iPad_login_Demo
//
//  Created by NECVN on 26/05/2022.
//

import UIKit

class SubRightTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var yelloView: UIView!
    @IBOutlet weak var rightTableView: UITableView!
    
    var rightData: [RightTBV] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElement()
        // Do any additional setup after loading the view.
    }
    func setUpElement(){
        Utilities.styleView(yelloView, radius: 10)
        rightTableView.layer.cornerRadius = CGFloat(0)
        
        rightTableView.register(UINib(nibName: "RightTableViewCell", bundle: nil), forCellReuseIdentifier: "RightCell")
        
        rightTableView.delegate = self
        rightTableView.dataSource = self
        
        rightData = createRightData()
        
    }
    
    func createRightData() -> [RightTBV]{
        var tempData: [RightTBV] = []
        
        let data1 = RightTBV(label: "01", hiden: false)
        let data2 = RightTBV(label: "02", hiden: false)
        let data3 = RightTBV(label: "03", hiden: true)
        let data4 = RightTBV(label: "04", hiden: true)
        let data5 = RightTBV(label: "05", hiden: true)
        let data6 = RightTBV(label: "06", hiden: false)
        let data7 = RightTBV(label: "07", hiden: true)
        let data8 = RightTBV(label: "08", hiden: false)
        let data9 = RightTBV(label: "09", hiden: true)
        let data10 = RightTBV(label: "10", hiden: false)
        let data11 = RightTBV(label: "11", hiden: true)
        let data12 = RightTBV(label: "12", hiden: false)

        tempData.append(data1)
        tempData.append(data2)
        tempData.append(data3)
        tempData.append(data4)
        tempData.append(data5)
        tempData.append(data6)
        tempData.append(data7)
        tempData.append(data8)
        tempData.append(data9)
        tempData.append(data10)
        tempData.append(data11)
        tempData.append(data12)

        return tempData
    }
        
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rightData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let rightData = rightData[indexPath.row]

        let rightCell = tableView.dequeueReusableCell(withIdentifier: "RightCell", for: indexPath) as! RightTableViewCell
        rightCell.setRightCell(rightCell: rightData)

        if(indexPath.row % 2 == 0){
            rightCell.backgroundColor = UIColor.systemGray6
        } else{
            rightCell.backgroundColor = UIColor.systemGray5
        }

        
        
        return rightCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rightCell = tableView.cellForRow(at: indexPath) as! RightTableViewCell
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.systemBlue
        
        rightCell.RightTableViewLabel.textColor = .white
        
        // change color for cell background
        rightCell.selectedBackgroundView = backgroundView
        
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let rightCell = tableView.cellForRow(at: indexPath) as! RightTableViewCell
        
        rightCell.RightTableViewLabel.textColor = .black
        
    }
}
