//
//  TempCell.swift
//  iPad_login_Demo
//
//  Created by NECVN on 08/06/2022.
//

import UIKit

class TempCell: UITableViewCell {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    
    func setDataLabel(data: [String]){
        label1.text = convertNumToDecimal(data[0])
        label2.text = convertNumToDecimal(data[1])
        label3.text = convertNumToDecimal(data[2])
        label4.text = convertNumToDecimal(data[3])
        label5.text = convertNumToDecimal(data[4])
        label6.text = convertNumToDecimal(data[5])
        label7.text = convertNumToDecimal(data[6])
    }
    func setTemp(data: [String]){
        label1.text = data[0]
        label2.text = data[1]
        label3.text = data[2]
        label4.text = data[3]
        label5.text = data[4]
        label6.text = data[5]
        label7.text = data[6]
    }
    func convertNumToDecimal(_ num: String) -> String{
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let formattedNumber = numberFormatter.string(from: NSNumber(value: Int(num)!))
        return formattedNumber!
    }
}
