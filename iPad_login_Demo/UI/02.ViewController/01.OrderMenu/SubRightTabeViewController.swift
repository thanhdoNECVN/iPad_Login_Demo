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
    
    var data = [RightOrderMenuModel]()
    var selectedIndex = IndexPath(row: -1, section: 0)
    
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

        
        Task{
            let rightOrder = await getData(url: "http://127.0.0.1:8000/Menu?order=c2")
            self.data = rightOrder
            DispatchQueue.main.async {
                self.rightTableView.reloadData()
            }
        }
        
    }
    
    func getData(url: String) async -> [RightOrderMenuModel]{
        guard let url = URL(string: url) else {return []}
        
        do{
            let(data,_) = try await URLSession.shared.data(from: url)
            let rightOrders = try JSONDecoder().decode([RightOrderMenuModel].self, from: data)
            
            return rightOrders
            
        }catch{
            return []
        }
    }
        
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let rightData = data[indexPath.row]

        let rightCell = tableView.dequeueReusableCell(withIdentifier: "RightCell", for: indexPath) as! RightTableViewCell
        rightCell.setRightCell(rightCell: rightData)

        if(indexPath.row % 2 == 0){
            rightCell.backgroundColor = UIColor.systemGray6
        } else{
            rightCell.backgroundColor = UIColor.systemGray5
        }
        if selectedIndex == indexPath{
            rightCell.RightTableViewLabel.textColor = .white
            // change color for cell background
            rightCell.backgroundColor = UIColor(red: 44/255.0, green: 105/255.0, blue: 156/255.0, alpha: 1)
        }
        else{
            rightCell.RightTableViewLabel.textColor = .black
        }

        return rightCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath
        self.rightTableView.reloadData()
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
    }
}
