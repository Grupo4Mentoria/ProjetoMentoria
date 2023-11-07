//
//  ViewController.swift
//  ProjetoMentoria
//
//  Created by Thiago Valentim on 30/08/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    //Mark: - Closures
    var onRegisterTap: (() -> Void)?
    var onLoginSuccess: (() -> Void)?
    
    lazy var loginView: LoginScreen = {
        let view = LoginScreen(frame: .zero)
        
        
        view.onLoginTap = { [weak self] email, password in
            self?.loginTap(email, password)
        }
        
        view.onRegisterTap = { [weak self] in
            self?.onRegisterTap?()
        }
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = loginView
        self.title = "Entrada"
        
        let tapGesture = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    private func loginTap(_ email: String, _ password: String) {
        let userViewModel = UserViewModel()
        userViewModel.getUserFromApi(email, password) { [weak self] result in
            switch result {
            case .success(_):
                self?.onLoginSuccess?()
            case .failure(let error):
                self?.showMessage("Erro", error.localizedDescription)
            }
        }
    }
    
    func showMessage(_ title: String, _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}

