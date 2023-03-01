//
//  LoginViewController.swift
//  Optica-Mexicana
//
//  Created by Edgar Tobón Sosa on 28/02/23.
//

import UIKit
import NotificationBannerSwift
class LoginViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    //MARK: - IBAction
    @IBAction func logingButtonAction(){
        view.endEditing(true)
        performLogin()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    //MARK: - Private Methods
    private func setupUI(){
        loginButton.layer.cornerRadius = 25
    }
    private func performLogin(){
        guard let email = emailTextField.text, !email.isEmpty else{
            NotificationBanner(title:"Error",subtitle: "Ingresa un correo electronico",style: .warning).show()
            return
        }
        guard let password = passwordTextField.text, !password.isEmpty else {
            NotificationBanner(title:"Error",subtitle: "Ingresa una contraseña",style: .warning).show()
            return
        }
        
        if emailTextField.text=="prueba@gmail.com", passwordTextField.text == "123456" {
            
            performSegue(withIdentifier: "showHome", sender: nil)
        } else{
           
                NotificationBanner(title:"Error",subtitle: "Los datos no son correctos",style: .danger).show()
                return
        }
        
    }
}
