//
//  SubGrapthViewController.swift
//  iPad_login_Demo
//
//  Created by NECVN on 06/06/2022.
//
import Charts
import UIKit

class SubGrapthViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ChartViewDelegate {

    @IBOutlet weak var grapthView: UIView!
    @IBOutlet weak var secRightSubMenu: UITableView!
    var combineChartView = CombinedChartView()
    
    var data2 = [SecondRightSubMenuModel]()
    var temp: [String] = []
    var guest_qty: [String] = []
    var sales_qty: [String] = []
    var sales_money: [String] = []
    var priceoff_qty: [String] = []
    var priceoff_money: [String] = []
    var loss_qty: [String] = []
    var loss_money: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secRightSubMenu.delegate = self
        secRightSubMenu.dataSource = self
        secRightSubMenu.register(UINib(nibName: "grapthMenuDayCell", bundle: nil), forCellReuseIdentifier: "grapthMenuDayCell")
        secRightSubMenu.register(UINib(nibName: "imageViewCell", bundle: nil), forCellReuseIdentifier: "imageViewCell")
        secRightSubMenu.register(UINib(nibName: "TempCell", bundle: nil), forCellReuseIdentifier: "TempCell")
        
        Task{
            let secRightMenuData = await getData2(url: "http://127.0.0.1:8000/Second_sub_menu")
            self.data2 = secRightMenuData
            
            for data in data2{
                guest_qty.append(data.guest_qty)
                sales_qty.append(data.sales_qty)
                sales_money.append(data.sales_money)
                priceoff_qty.append(data.priceoff_qty)
                priceoff_money.append(data.priceoff_money)
                loss_qty.append(data.loss_qty)
                loss_money.append(data.loss_money)
                temp.append("\(data.temp_high)°C/\(data.temp_low)°C")
            }
            combineChartView.frame = CGRect(x:0,y:0,
                                            width: grapthView.frame.size.width,
                                    height: grapthView.frame.size.height)
//            combineChartView.center = grapthView.center
            grapthView.addSubview(combineChartView)
            
            var bar_entries = [BarChartDataEntry]()
            var line_entries = [ChartDataEntry]()
            for x in 0..<7{
                bar_entries.append(BarChartDataEntry(x: Double(x), y: Double(sales_qty[x])!))
                line_entries.append(ChartDataEntry(x: Double(x), y: Double(guest_qty[x])!))
            }
            
//            let bar_set = BarChartDataSet(entries: bar_entries, label: "壳上数")
//            let line_set = LineChartDataSet(entries: line_entries, label: "客数")
            let bar_set = BarChartDataSet(entries: bar_entries)
            let line_set = LineChartDataSet(entries: line_entries)
            bar_set.colors = [NSUIColor(red: 140/255.0, green: 164/255.0, blue: 161/255, alpha: 1.0)]
            bar_set.drawValuesEnabled = false
            
            
            line_set.drawCircleHoleEnabled = false
            line_set.circleColors = [NSUIColor(ciColor: .black)]
            line_set.circleRadius = 5
            line_set.colors = [NSUIColor(ciColor: .black)]
            line_set.drawValuesEnabled = false
            
            let data = CombinedChartData()
            data.lineData = LineChartData(dataSet: line_set)
            data.barData = BarChartData(dataSet: bar_set)
            
            combineChartView.data = data
            
            combineChartView.xAxis.drawAxisLineEnabled = false
            combineChartView.xAxis.drawGridLinesEnabled = false
            combineChartView.xAxis.drawLabelsEnabled = false
            
            combineChartView.leftAxis.drawGridLinesEnabled = false
            combineChartView.leftAxis.drawLabelsEnabled = false
            combineChartView.leftAxis.drawAxisLineEnabled = false
            
            combineChartView.rightAxis.drawGridLinesEnabled = false
            combineChartView.rightAxis.drawLabelsEnabled = false
            combineChartView.rightAxis.drawAxisLineEnabled = false
            
            // Hide bottom label of chart
            combineChartView.legend.enabled = false
            
            combineChartView.barData?.barWidth = Double(0.85)
            
            
            
            
            


            DispatchQueue.main.async {
                self.secRightSubMenu.reloadData()
            }
        }
        combineChartView.delegate = self
        
    }
    
    func getData2(url: String) async -> [SecondRightSubMenuModel]{
        guard let url = URL(string: url) else {return []}
        
        do{
            let (data,_) = try await URLSession.shared.data(from: url)
            let secSubMenu = try JSONDecoder().decode([SecondRightSubMenuModel].self, from: data)
            return secSubMenu
            
        }catch{
            return []
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.isScrollEnabled = false
        if indexPath.row == 0{
            let dayCell = tableView.dequeueReusableCell(withIdentifier: "grapthMenuDayCell") as! grapthMenuDayCell
            dayCell.setDayData(dayCell: data2)
            return dayCell
        }else if indexPath.row == 1{
            let imageViewCell = tableView.dequeueReusableCell(withIdentifier: "imageViewCell") as! imageViewCell
            imageViewCell.setImageData(imageCell: data2)
            return imageViewCell
        }else{
            let tempCell = tableView.dequeueReusableCell(withIdentifier: "TempCell") as! TempCell
            if indexPath.row == 2{
                tempCell.setTemp(data: temp)
            }else if indexPath.row == 3{
                tempCell.setDataLabel(data: guest_qty)
            }else if indexPath.row == 4{
                tempCell.setDataLabel(data: sales_qty)
            }else if indexPath.row == 5{
                tempCell.setDataLabel(data: sales_money)
            }else if indexPath.row == 6{
                tempCell.setDataLabel(data: priceoff_qty)
            }else if indexPath.row == 7{
                tempCell.setDataLabel(data: priceoff_money)
            }else if indexPath.row == 8{
                tempCell.setDataLabel(data: loss_qty)
            }else if indexPath.row == 9{
                tempCell.setDataLabel(data: loss_money)
            }
            return tempCell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 40
        }else{
            return 30
        }
    }
}
