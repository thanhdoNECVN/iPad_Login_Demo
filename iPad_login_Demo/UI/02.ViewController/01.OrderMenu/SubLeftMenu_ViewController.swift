//
//  SubLeftMenu_ViewController.swift
//  iPad_login_Demo
//
//  Created by NECVN on 24/05/2022.
//

import UIKit

class SubLeftMenu_ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var leftTableView: UITableView!
    var leftData: [LeftTBV] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        leftData = createLeftData()
        
        leftTableView.delegate = self
        leftTableView.dataSource = self
        
        leftTableView.register(UINib(nibName: "leftTableViewCell", bundle: nil), forCellReuseIdentifier: "LeftCell")
        
        // Do any additional setup after loading the view.
    }

    
    func createLeftData() -> [LeftTBV]{
        var tempData: [LeftTBV] = []

        let data1 = LeftTBV(dayNum: "02/03", daySim: "月", image1: "sun.max", image2: "cloud.rain", highDegrees: "14°C", lowDegress: "4°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data2 = LeftTBV(dayNum: "03/03", daySim: "月", image1: "cloud.rain", image2: "sun.max", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data3 = LeftTBV(dayNum: "03/03", daySim: "月", image1: "cloud.rain", image2: "sun.max", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data4 = LeftTBV(dayNum: "03/03", daySim: "月", image1: "cloud.rain", image2: "sun.max", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data5 = LeftTBV(dayNum: "03/03", daySim: "月", image1: "cloud.rain", image2: "sun.max", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data6 = LeftTBV(dayNum: "03/03", daySim: "月", image1: "cloud.rain", image2: "sun.max", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data7 = LeftTBV(dayNum: "03/03", daySim: "月", image1: "cloud.rain", image2: "sun.max", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data8 = LeftTBV(dayNum: "03/03", daySim: "月", image1: "cloud.rain", image2: "sun.max", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data9 = LeftTBV(dayNum: "03/03", daySim: "月", image1: "cloud.rain", image2: "sun.max", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data10 = LeftTBV(dayNum: "03/03", daySim: "月", image1: "cloud.rain", image2: "sun.max", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data11 = LeftTBV(dayNum: "03/03", daySim: "月", image1: "cloud.rain", image2: "sun.max", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")
        let data12 = LeftTBV(dayNum: "03/03", daySim: "月", image1: "cloud.rain", image2: "sun.max", highDegrees: "15°C", lowDegress: "5°C", numberOfPeople: "2213", event: "イバンイバンイバン")

        tempData.append(data1)
        tempData.append(data2)
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
        return leftData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let leftData = leftData[indexPath.row]
        
        let leftCell = tableView.dequeueReusableCell(withIdentifier: "LeftCell", for: indexPath) as! leftTableViewCell
        leftCell.setLeftCell(leftCell: leftData)
        
        if indexPath.row % 2 == 0 {
            leftCell.dayNum.backgroundColor = .systemGray6
            leftCell.daySim.backgroundColor = .systemGray6
            leftCell.image1View.backgroundColor = UIColor(red: 179/255.0, green: 218/255.0, blue: 247/255.0, alpha: 1)
            leftCell.image2View.backgroundColor = UIColor(red: 249/255.0, green: 235/255.0, blue: 175/255.0, alpha: 1)
        }
        else{
            leftCell.dayNum.backgroundColor = .systemGray5
            leftCell.daySim.backgroundColor = .systemGray5
            leftCell.image1View.backgroundColor = UIColor(red: 202/255.0, green: 224/255.0, blue: 247/255.0, alpha: 1)
            leftCell.image2View.backgroundColor = UIColor(red: 245/255.0, green: 236/255.0, blue: 199/255.0, alpha: 1)
        }
        return leftCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor(red: 44/255.0, green: 105/255.0, blue: 156/255.0, alpha: 1)
        
        let leftCell = tableView.cellForRow(at: indexPath) as! leftTableViewCell
        
        
        leftCell.dayNum.textColor = .white
        leftCell.dayNum.backgroundColor = .clear
        leftCell.daySim.textColor = .white
        leftCell.daySim.backgroundColor = .clear
        leftCell.lowDegrees.textColor = .white
        leftCell.highDegress.textColor = .white
        leftCell.numOfPeople.textColor = .white
        leftCell.image1.tintColor = .white
        leftCell.image1View.backgroundColor = .clear
        leftCell.image2.tintColor = .white
        leftCell.image2View.backgroundColor = .clear
        leftCell.event.textColor = .white
        leftCell.personImage.tintColor = .white
        leftCell.selectedBackgroundView = backgroundView
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let leftCell = tableView.cellForRow(at: indexPath) as! leftTableViewCell
        
        if indexPath.row % 2 == 0 {
            leftCell.dayNum.backgroundColor = .systemGray6
            leftCell.daySim.backgroundColor = .systemGray6
            leftCell.image1View.backgroundColor = UIColor(red: 179/255.0, green: 218/255.0, blue: 247/255.0, alpha: 1)
            leftCell.image2View.backgroundColor = UIColor(red: 249/255.0, green: 235/255.0, blue: 175/255.0, alpha: 1)
        }
        else{
            leftCell.dayNum.backgroundColor = .systemGray5
            leftCell.daySim.backgroundColor = .systemGray5
            leftCell.image1View.backgroundColor = UIColor(red: 202/255.0, green: 224/255.0, blue: 247/255.0, alpha: 1)
            leftCell.image2View.backgroundColor = UIColor(red: 245/255.0, green: 236/255.0, blue: 199/255.0, alpha: 1)
        }
        
        leftCell.dayNum.textColor = .black
        leftCell.daySim.textColor = .black
        leftCell.lowDegrees.textColor = .black
        leftCell.highDegress.textColor = .black
        leftCell.numOfPeople.textColor = .black
        leftCell.image1.tintColor = .black
        leftCell.image2.tintColor = .black
        leftCell.event.textColor = .black
        leftCell.personImage.tintColor = .systemGreen
    }
}
