//
//  RegisterScreen.swift
//  ProjetoMentoria
//
//  Created by Cesar Silva on 29/10/23.
//

import UIKit

class RegisterScreen: UIView {

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
    
    lazy var passwordConfirmLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Corfirmação de Senha"
        label.textColor = .white
        return label
    }()
    
    lazy var passwordConfirmTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Confirme sua senha"
        textField.backgroundColor = .white
        textField.keyboardType = .default
        textField.isSecureTextEntry = true
        textField.layer.cornerRadius = 6
        return textField
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Cadastrar", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 16
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
}
