//
//  RegisterViewController.swift
//  Optica-Mexicana
//
//  Created by Edgar Tobón Sosa on 28/02/23.
//

import UIKit
import NotificationBannerSwift

class RegisterViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nombreTextField:UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    //MARK: - IBAction
    @IBAction func registerButtonAction(){
        view.endEditing(true)
        performRegister()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    

    private func setupUI(){
        registerButton.layer.cornerRadius = 25
    }
    
    private func performRegister(){
        guard let email = emailTextField.text, !email.isEmpty else{
            NotificationBanner(title:"Error",subtitle: "Ingresa un correo electronico",style: .warning).show()
            return
        }
        guard let name = nombreTextField.text, !name.isEmpty else {
            NotificationBanner(title:"Error",subtitle: "Debes Ingresar un nombre",style: .warning).show()
            return
        }
        guard let password = passwordTextField.text, !password.isEmpty else {
            NotificationBanner(title:"Error",subtitle: "Ingresa una contraseña",style: .warning).show()
            return
        }
        performSegue(withIdentifier: "showHome", sender: nil)
        //Registrar Sesion AQUI
    }

}
