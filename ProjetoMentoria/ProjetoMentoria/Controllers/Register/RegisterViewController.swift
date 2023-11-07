//
//  RegisterViewController.swift
//  ProjetoMentoria
//
//  Created by Cesar Silva on 29/10/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    //Mark: - Closures
    var onRegisterSuccess: (() -> Void)?
    
    lazy var registerView: RegisterScreen = {
        let view = RegisterScreen(frame: .zero)
        
        view.onRegisterTap = { [weak self] email, password in
            self?.registerTap(email, password)
        }
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view = registerView
        self.title = "Cadastro"
        
        let tapGesture = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    private func registerTap(_ email: String, _ password: String) {
        let userViewModel = UserViewModel()
        userViewModel.setUserFromApi(email, password) { [weak self] result in
            switch result {
            case .success(_):
                self?.showMessage("Sucesso", "Usuário cadastrado com sucesso.")
                self?.onRegisterSuccess?()
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
