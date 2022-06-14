//
//  models.swift
//  iPad_login_Demo
//
//  Created by NECVN on 02/06/2022.
//

import Foundation

struct OrderMenuModel: Codable{
    let edit_date: String
    let temp_high: String
    let temp_low: String
    let event: String
    let date: String
    let store_info: String
    let head_info: String
    let weather_morning: String
    let weather_after: String
    let guest_qty: String
}

struct RightOrderMenuModel: Codable{
    let sect_name,sect_code,sect_info,new_plan,eob_use_flg: String
}

struct RightSubMenuModel: Codable{
    let lead_time, edit_date, order_qty, order_cost, plan_ratio, week_date, plan_cost: String
}

struct LoginResponce: Codable{
    let status: String
}

struct SecondRightSubMenuModel: Codable{
    let edit_date, temp_high, temp_low, guest_qty, sales_qty, sales_money, priceoff_qty, priceoff_money, loss_qty, loss_money, date, week_date, weather_morning, weather_after: String
}
