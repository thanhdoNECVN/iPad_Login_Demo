//
//  LoginViewController.swift
//  iPad_login_Demo
//
//  Created by NECVN on 12/05/2022.
//

import UIKit

class LoginViewController: UIViewController {


    @IBOutlet weak var userNameLeftDot: UIView!
    @IBOutlet weak var userNameRightDot: UIView!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var userNameBottomLine: UIView!
    
    
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
        userNameTextField!.becomeFirstResponder()
        Utilities.styleTextFiel(userNameTextField)
        Utilities.styleTextFiel(passTextField)
        Utilities.styleButton(loginButton, 5)
    }

    func getData(url: String) async -> String {
        guard let url = URL(string: url) else{ return "failed"}
        
        do{
            let (data,_) = try await URLSession.shared.data(from: url)
            let response = try JSONDecoder().decode(LoginResponce.self, from: data)
            return response.status
        }catch{
            return "cant reach endpoint"
        }
    }
   
    @IBAction func userBeginAction(_ sender: UITextField) {
        Utilities.hoverColor(userNameLeftDot, userNameRightDot, userNameBottomLine)
    }
    
    @IBAction func userEndAction(_ sender: UITextField) {
        Utilities.hoverColorDedault(userNameLeftDot, userNameRightDot, userNameBottomLine)
    }
    
    @IBAction func passBeginAction(_ sender: UITextField) {
        Utilities.hoverColor(passLeftDot, passRightDot, passBottomLine)
    }
    
    @IBAction func passEndAction(_ sender: UITextField) {
        Utilities.hoverColorDedault(passLeftDot, passRightDot, passBottomLine)
    }
    
    @IBAction func LoginButtonTapped(_ sender: UIButton) {
        Task{
            let convertedUserName = (userNameTextField.text?.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed))
            let loginResponse = await getData(url: "http://127.0.0.1:8000/?username=\(String(describing: convertedUserName!))")
            if loginResponse == "success"{
                let orderMenu = OrderMenuViewController()
                self.navigationController?.pushViewController(orderMenu, animated: true)
            }else{
                print("failed")
            }
    
        }
            
    }
    
}
