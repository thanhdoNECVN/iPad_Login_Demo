//
//  LoginViewController.swift
//  iPad_login_Demo
//
//  Created by NECVN on 12/05/2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userLeftDot: UIView!
    @IBOutlet weak var userBottomLine: UIView!
    @IBOutlet weak var userRightDot: UIView!
    @IBOutlet weak var userNameTextField: UITextField!
    
    
    @IBOutlet weak var passLeftDot: UIView!
    @IBOutlet weak var passBottomLine: UIView!
    @IBOutlet weak var passRightDot: UIView!
    @IBOutlet weak var passTextField: UITextField!
    
    
    @IBOutlet weak var loginButton: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElement()


        // Do any additional setup after loading the view.
    }

    func setUpElement(){
        userNameTextField.becomeFirstResponder()
        Utilities.styleTextFiel(userNameTextField)
        Utilities.styleTextFiel(passTextField)
        Utilities.styleButton(loginButton, 5)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
   
    @IBAction func userBeginAction(_ sender: UITextField) {
        Utilities.hoverColor(userLeftDot, userRightDot, userBottomLine)
    }
    
    @IBAction func userEndAction(_ sender: UITextField) {
        Utilities.hoverColorDedault(userLeftDot, userRightDot, userBottomLine)
    }
    
    @IBAction func passBeginAction(_ sender: UITextField) {
        Utilities.hoverColor(passLeftDot, passRightDot, passBottomLine)
    }
    
    @IBAction func passEndAction(_ sender: UITextField) {
        Utilities.hoverColorDedault(passLeftDot, passRightDot, passBottomLine)
    }
    
}

