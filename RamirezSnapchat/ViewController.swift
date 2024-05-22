//
//  ViewController.swift
//  RamirezSnapchat
//
//  Created by Lessiel Ramirez  on 22/05/24.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) {(user, error) in print("Intentando Iniciar Sesion")
            if error != nil{
                print("Se presento el siguiente error:\(error)")
            } else {
                print("Inicio de sesion exitoso")
            }
        }
    }
}

