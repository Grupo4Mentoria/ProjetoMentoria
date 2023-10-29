//
//  RegisterViewController.swift
//  ProjetoMentoria
//
//  Created by Cesar Silva on 29/10/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    lazy var registerView: RegisterScreen = {
        let view = RegisterScreen(frame: .zero)
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view = registerView
        self.title = "Cadastro"
    }

}
