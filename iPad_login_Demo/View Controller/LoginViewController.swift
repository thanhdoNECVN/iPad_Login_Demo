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
        Utilities.styleButton(loginButton)
    }

    class Utilities {
        static func styleTextFiel(_ textField: UITextField){
            textField.attributedPlaceholder = NSAttributedString(string: textField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : UIColor.opaqueSeparator])
        }

        static func styleButton(_ button: UIButton){
            button.layer.cornerRadius = 5

        }

        static func hoverColor(_ view1: UIView, _ view2: UIView, _ view3: UIView){
            view1.backgroundColor = UIColor.systemBlue
            view2.backgroundColor = UIColor.systemBlue
            view3.backgroundColor = UIColor.systemBlue
        }
        static func hoverColorDedault(_ view1: UIView, _ view2: UIView, _ view3: UIView){
            view1.backgroundColor = UIColor.systemGray2
            view2.backgroundColor = UIColor.systemGray2
            view3.backgroundColor = UIColor.systemGray2
        }

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

