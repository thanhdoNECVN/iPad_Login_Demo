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
    var data = [OrderMenuModel]()
    var selectedIndex = IndexPath(row: 0, section: 0)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        leftTableView.delegate = self
        leftTableView.dataSource = self
        
        leftTableView.register(UINib(nibName: "leftTableViewCell", bundle: nil), forCellReuseIdentifier: "LeftCell")
        
        Task{
            let orders = await getData(url: "http://127.0.0.1:8000/Menu?order=c1")
            self.data = orders
            DispatchQueue.main.async {
                self.leftTableView.reloadData()
            }
        }
        
        // Do any additional setup after loading the view.
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let leftData = data[indexPath.row]
        
        let leftCell = tableView.dequeueReusableCell(withIdentifier: "LeftCell", for: indexPath) as! leftTableViewCell
        leftCell.setLeftCell(leftCell: leftData)
        
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor(red: 44/255.0, green: 105/255.0, blue: 156/255.0, alpha: 1)
        
//        leftTableView.reloadData()
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
        
        if leftCell.daySim.text == "日"{
            leftCell.daySim.textColor = .red
        }
        else{
            leftCell.daySim.textColor = .black
        }
        if selectedIndex == indexPath{
            leftCell.dayNum.textColor = .white
            leftCell.dayNum.backgroundColor = .clear
            leftCell.daySim.textColor = .white
            leftCell.daySim.backgroundColor = .clear
            leftCell.lowDegrees.backgroundColor = .clear
            leftCell.lowDegrees.textColor = .white
            leftCell.highDegress.backgroundColor = .clear
            leftCell.highDegress.textColor = .white
            leftCell.numOfPeople.textColor = .white
            leftCell.image1.tintColor = .white
            leftCell.image1View.backgroundColor = .clear
            leftCell.image2.tintColor = .white
            leftCell.image2View.backgroundColor = .clear
            leftCell.event.textColor = .white
            leftCell.personImage.tintColor = .white
            leftCell.backgroundColor = UIColor(red: 44/255.0, green: 105/255.0, blue: 156/255.0, alpha: 1)
        }
        else{
            leftCell.dayNum.textColor = .black
            leftCell.lowDegrees.textColor = .black
            leftCell.highDegress.textColor = .black
            leftCell.numOfPeople.textColor = .black
            leftCell.image1.tintColor = .black
            leftCell.image2.tintColor = .black
            leftCell.event.textColor = .black
            leftCell.personImage.tintColor = .systemGreen
            leftCell.backgroundColor = .clear
        }
        return leftCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath
        self.leftTableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
    }
    
    private func getData(url: String) async -> [OrderMenuModel]{
        guard let url = URL(string: url) else {return []}
        
        do{
            let (data,_) = try await URLSession.shared.data(from: url)
            let orders = try JSONDecoder().decode([OrderMenuModel].self, from: data)
            
            return orders
        }
        catch{
            return []
        }
    }
        
}
