//
//  RegisterScreen.swift
//  ProjetoMentoria
//
//  Created by Cesar Silva on 29/10/23.
//

import UIKit
import DSM

class RegisterScreen: UIView {
    
    var themeId = 1

    //MARK: - Closures
    var onRegisterTap:((_ email: String, _ password: String) -> Void)?

    //MARK: - Properties
    lazy var emailLabel: UILabel = {
        return UIComponentsFactory.shared.createLabel(themeId: themeId, component: ThemeComponentEnum.customText.rawValue, text: "E-mail")
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UIComponentsFactory.shared.createTextField(themeId: themeId, component: ThemeComponentEnum.customTextField.rawValue, placeholder: "Digite seu e-mail")
        textField.autocapitalizationType = .none
        return textField
    }()
    
    lazy var passwordLabel: UILabel = {
        return UIComponentsFactory.shared.createLabel(themeId: themeId, component: ThemeComponentEnum.customText.rawValue, text: "Senha")
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UIComponentsFactory.shared.createTextField(themeId: themeId, component: ThemeComponentEnum.customTextField.rawValue, placeholder: "Digite sua senha")
        textField.isSecureTextEntry = true
        textField.autocapitalizationType = .none
        return textField
    }()
    
    lazy var passwordConfirmLabel: UILabel = {
        return UIComponentsFactory.shared.createLabel(themeId: themeId, component: ThemeComponentEnum.customText.rawValue, text: "Corfirmação de Senha")
    }()
    
    lazy var passwordConfirmTextField: UITextField = {
        let textField = UIComponentsFactory.shared.createTextField(themeId: themeId, component: ThemeComponentEnum.customTextField.rawValue, placeholder: "Confirme sua senha")
        textField.isSecureTextEntry = true
        textField.autocapitalizationType = .none
        return textField
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIComponentsFactory.shared.createButton(themeId: themeId, component: ThemeComponentEnum.customButtomPrimary.rawValue, title: "Cadastrar")
        button.addTarget(self, action: #selector(registerTapAction), for: .touchUpInside)
        return button
    }()
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemBackground
        addElements()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        self.addSubview(emailLabel)
        self.addSubview(emailTextField)
        self.addSubview(passwordLabel)
        self.addSubview(passwordTextField)
        self.addSubview(passwordConfirmLabel)
        self.addSubview(passwordConfirmTextField)
        self.addSubview(registerButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 44),
            emailLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            emailLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 16),
            emailTextField.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 44),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 24),
            passwordLabel.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            passwordLabel.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 16),
            passwordTextField.leadingAnchor.constraint(equalTo: passwordLabel.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: passwordLabel.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 44),
            
            passwordConfirmLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 24),
            passwordConfirmLabel.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            passwordConfirmLabel.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            
            passwordConfirmTextField.topAnchor.constraint(equalTo: passwordConfirmLabel.bottomAnchor, constant: 16),
            passwordConfirmTextField.leadingAnchor.constraint(equalTo: passwordConfirmLabel.leadingAnchor),
            passwordConfirmTextField.trailingAnchor.constraint(equalTo: passwordConfirmLabel.trailingAnchor),
            passwordConfirmTextField.heightAnchor.constraint(equalToConstant: 44),
            
            registerButton.topAnchor.constraint(equalTo: passwordConfirmTextField.bottomAnchor, constant: 48),
            registerButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 44),
            registerButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -44),
            registerButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    //MARK - Actions
    @objc func registerTapAction() {
        if let email = emailTextField.text,
           let password = passwordTextField.text,
            passwordTextField.text == passwordConfirmTextField.text {
            self.onRegisterTap?(email, password)
        }
    }
    
}
