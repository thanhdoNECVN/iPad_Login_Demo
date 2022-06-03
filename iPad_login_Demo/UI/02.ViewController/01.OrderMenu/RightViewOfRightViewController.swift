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
    
    @IBOutlet weak var sect_name: UILabel!
    @IBOutlet weak var centerView: UIView!
    
    var text : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElement()
    }
    func setUpElement(){
        Utilities.styleButton(ButtonNew, 10)
        Utilities.styleButton(button1, 5)
        Utilities.styleButton(button2, 5)
//        if text.isEmpty{
//            centerView.alpha = 0
//        }else{
//            centerView.alpha = 1
//            sect_name.text = text
//        }
        
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
