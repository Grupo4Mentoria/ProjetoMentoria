//
//  LoginScreen.swift
//  ProjetoMentoria
//
//  Created by Cesar Silva on 29/10/23.
//

import UIKit

class LoginScreen: UIView {
    
    //MARK: - Closures
    var onRegisterTap:(() -> Void)?

    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "E-mail"
        label.textColor = .white
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Digite seu e-mail"
        textField.backgroundColor = .white
        textField.keyboardType = .emailAddress
        textField.layer.cornerRadius = 6
        return textField
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Senha"
        label.textColor = .white
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Digite sua senha"
        textField.backgroundColor = .white
        textField.keyboardType = .default
        textField.isSecureTextEntry = true
        textField.layer.cornerRadius = 6
        return textField
    }()
    
    lazy var reminderSwitch: UISwitch = {
        let switchButon = UISwitch()
        switchButon.translatesAutoresizingMaskIntoConstraints = false
        switchButon.thumbTintColor = .gray
        switchButon.backgroundColor = .white
        switchButon.layer.cornerRadius = 16
        return switchButon
    }()
    
    lazy var reminderLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lembrar"
        label.textColor = .white
        return label
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 16
        return button
    }()
    
    lazy var goRegisterButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Cadastre-se", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 16
        
        button.addTarget(self, action: #selector(registerTapAction), for: .touchUpInside)
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .gray
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
        self.addSubview(reminderSwitch)
        self.addSubview(reminderLabel)
        self.addSubview(loginButton)
        self.addSubview(goRegisterButton)
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
            
            reminderSwitch.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 24),
            reminderSwitch.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            
            reminderLabel.topAnchor.constraint(equalTo: reminderSwitch.topAnchor),
            reminderLabel.leadingAnchor.constraint(equalTo: reminderSwitch.trailingAnchor, constant: 8),
            reminderLabel.bottomAnchor.constraint(equalTo: reminderSwitch.bottomAnchor),
            
            loginButton.topAnchor.constraint(equalTo: reminderSwitch.bottomAnchor, constant: 48),
            loginButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 44),
            loginButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -44),
            loginButton.heightAnchor.constraint(equalToConstant: 44),
            
            goRegisterButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 16),
            goRegisterButton.leadingAnchor.constraint(equalTo: loginButton.leadingAnchor),
            goRegisterButton.trailingAnchor.constraint(equalTo: loginButton.trailingAnchor),
            goRegisterButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    @objc func registerTapAction() {
        self.onRegisterTap?()
    }
}
