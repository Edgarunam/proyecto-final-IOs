//
//  WelcomeViewController.swift
//  Optica-Mexicana
//
//  Created by Edgar Tobón Sosa on 28/02/23.
//

import UIKit

class WelcomeViewController: UIViewController {
//MARK: - Outlets
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    
    private func setupUI(){
        loginButton.layer.cornerRadius = 25
    }

}
