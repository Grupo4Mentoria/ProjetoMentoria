//
//  ViewController.swift
//  ProjetoMentoria
//
//  Created by Thiago Valentim on 30/08/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    lazy var loginView: LoginScreen = {
        let view = LoginScreen(frame: .zero)
        
        view.onRegisterTap = {
            self.navigationController?.pushViewController(RegisterViewController(), animated: true)
        }
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view = loginView
        self.title = "Entrada"
    }


}

