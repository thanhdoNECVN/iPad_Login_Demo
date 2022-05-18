//
//  HomeViewController.swift
//  iPad_login_Demo
//
//  Created by NECVN on 16/05/2022.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var leftTableViewHeader: UIView!
    @IBOutlet weak var NewButton: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var taskLabelView: UILabel!
    
    
    @IBOutlet weak var leftTableView: UITableView!
    @IBOutlet weak var rightTableView: UITableView!
    
    var leftData: [LeftTBV] = []
    var rightData: [RightTBV] = []
    let cornerRadius = 20.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpElement()
        
        leftData = createLeftData()
        rightData = createRightData()
        
        leftTableView.delegate = self
        leftTableView.dataSource = self
        rightTableView.delegate = self
        rightTableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    func setUpElement(){
        yellowView.layer.masksToBounds = true
        yellowView.layer.cornerRadius = cornerRadius
        
        Utilities.styleButton(NewButton, 15)
        Utilities.styleButton(button1, 5)
        Utilities.styleButton(button2, 5)
        
    }
    
    func createLeftData() -> [LeftTBV]{
        var tempData: [LeftTBV] = []
        
        let data1 = LeftTBV(label: "01", hiden: false)
        let data2 = LeftTBV(label: "02", hiden: false)
        let data3 = LeftTBV(label: "03", hiden: true)
        let data4 = LeftTBV(label: "04", hiden: true)
        let data5 = LeftTBV(label: "05", hiden: true)
        let data6 = LeftTBV(label: "06", hiden: false)
        let data7 = LeftTBV(label: "07", hiden: true)
        let data8 = LeftTBV(label: "08", hiden: false)
        let data9 = LeftTBV(label: "09", hiden: true)
        let data10 = LeftTBV(label: "10", hiden: false)
        let data11 = LeftTBV(label: "11", hiden: true)
        let data12 = LeftTBV(label: "12", hiden: false)
        
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
    
    func createRightData() -> [RightTBV]{
        var tempData: [RightTBV] = []
        
        let data1 = RightTBV(dayNum: "02/03", daySim: "月", image1: "rainLogo", image2: "sunnyLogo", highDegrees: "14°C", lowDegress: "4°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data2 = RightTBV(dayNum: "03/03", daySim: "月", image1: "sunnyLogo", image2: "rainLogo", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data3 = RightTBV(dayNum: "03/03", daySim: "月", image1: "sunnyLogo", image2: "rainLogo", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data4 = RightTBV(dayNum: "03/03", daySim: "月", image1: "sunnyLogo", image2: "rainLogo", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data5 = RightTBV(dayNum: "03/03", daySim: "月", image1: "sunnyLogo", image2: "rainLogo", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data6 = RightTBV(dayNum: "03/03", daySim: "月", image1: "sunnyLogo", image2: "rainLogo", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data7 = RightTBV(dayNum: "03/03", daySim: "月", image1: "sunnyLogo", image2: "rainLogo", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data8 = RightTBV(dayNum: "03/03", daySim: "月", image1: "sunnyLogo", image2: "rainLogo", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data9 = RightTBV(dayNum: "03/03", daySim: "月", image1: "sunnyLogo", image2: "rainLogo", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data10 = RightTBV(dayNum: "03/03", daySim: "月", image1: "sunnyLogo", image2: "rainLogo", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data11 = RightTBV(dayNum: "03/03", daySim: "月", image1: "sunnyLogo", image2: "rainLogo", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data12 = RightTBV(dayNum: "03/03", daySim: "月", image1: "sunnyLogo", image2: "rainLogo", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        
        
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
    
}
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == leftTableView{
            return leftData.count
        }
        else{ //tag == 1
            return rightData.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.systemBlue
        
        if tableView == leftTableView{
            let leftData = leftData[indexPath.row]

            let leftCell = tableView.dequeueReusableCell(withIdentifier: "LeftCell") as! LeftTableViewCell
            leftCell.setLeftCell(leftCell: leftData)

            if(indexPath.row % 2 == 0){
                leftCell.backgroundColor = UIColor.systemGray6
            } else{
                leftCell.backgroundColor = UIColor.systemGray5
            }
            
            // change color for cell background
            leftCell.selectedBackgroundView = backgroundView
            
//            if selectedIndex == indexPath
//            {
//                leftCell.leftTableViewLabel.textColor = UIColor.white
//                leftCell.backgroundView = backgroundView
//            }
            return leftCell
        }
        else{
            let rightData = rightData[indexPath.row]

            let rightCell = tableView.dequeueReusableCell(withIdentifier: "RightCell") as! RightTableViewCell
            rightCell.setRightCell(rightCell: rightData)
            
            if(indexPath.row % 2 == 0){
                rightCell.dayNumberView.backgroundColor = UIColor.systemGray6
                rightCell.daySimbolView.backgroundColor = UIColor.systemGray6
            } else{
                rightCell.dayNumberView.backgroundColor = UIColor.systemGray5
                rightCell.daySimbolView.backgroundColor = UIColor.systemGray5
            }
            rightCell.selectedBackgroundView = backgroundView
            return rightCell
        }
    }
}
