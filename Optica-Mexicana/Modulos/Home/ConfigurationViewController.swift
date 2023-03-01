//
//  ConfigurationViewController.swift
//  Optica-Mexicana
//
//  Created by Edgar Tobón Sosa on 01/03/23.
//

import UIKit
import NotificationBannerSwift

class ConfigurationViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true,completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true,completion: nil)
        
        guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else{
            return
        }
        
        imageView.image = image
    }
    

    @IBOutlet var imageView:UIImageView!
    @IBOutlet var button:UIButton!
    
    @IBAction func PhotoButtonAction(){
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = self
        present(picker, animated: true)
    }
    
    @IBAction func SaveButtonAction(){
        view.endEditing(true)
        NotificationBanner(title:"Felicidades",subtitle: "Datos del usuario guardados con exito",style: .success).show()
        return
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.backgroundColor = .secondarySystemBackground
        button.backgroundColor = .systemBlue
        // Do any additional setup after loading the view.
    }
    
}

