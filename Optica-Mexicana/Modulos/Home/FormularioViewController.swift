//
//  FormularioViewController.swift
//  Optica-Mexicana
//
//  Created by Edgar Tobón Sosa on 01/03/23.
//

import UIKit
import NotificationBannerSwift
class FormularioViewController: UIViewController {
    @IBAction func SaveButtonAction(){
        NotificationBanner(title:"Felicidades",subtitle: "Historial guardado con exito",style: .success).show()
        return
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
