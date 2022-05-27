//
//  RightViewOfRightViewController.swift
//  iPad_login_Demo
//
//  Created by NECVN on 26/05/2022.
//

import UIKit

class RightViewOfRightViewController: UIViewController {

    @IBOutlet weak var ButtonNew: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElement()
        // Do any additional setup after loading the view.
    }
    func setUpElement(){
        Utilities.styleButton(ButtonNew, 10)
        Utilities.styleButton(button1, 5)
        Utilities.styleButton(button2, 5)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
