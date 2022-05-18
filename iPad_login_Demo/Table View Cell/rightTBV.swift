//
//  rightTBV.swift
//  iPad_login_Demo
//
//  Created by NECVN on 17/05/2022.
//

import Foundation
import UIKit

class RightTBV{
    var dayNum: String
    var daySim: String
    var image1: String
    var image2: String
    var highDegrees: String
    var lowDegress: String
    var numberOfPeople: String
    var event: String!
    
    init(dayNum: String, daySim: String, image1:String, image2: String, highDegrees: String, lowDegress: String, numberOfPeople: String, event: String!){
        self.dayNum = dayNum
        self.daySim = daySim
        self.image1 = image1
        self.image2 = image2
        self.highDegrees = highDegrees
        self.lowDegress = lowDegress
        self.numberOfPeople = numberOfPeople
        self.event = event
    }
}
