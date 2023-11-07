//
//  UserProvider.swift
//  ProjetoMentoria
//
//  Created by Cesar Silva on 06/11/23.
//

import Foundation
import FirebaseAuth

protocol UserProviderProtocol {
    func login(paremeters: [AnyHashable: Any], completionHandler: @escaping(Result<UserModel, Error>) -> Void)
    func register(paramenters: [AnyHashable: Any], completionHandler: @escaping(Result<UserModel, Error>) -> Void)
}

class UserProvider: UserProviderProtocol {
    lazy var auth = Auth.auth()
    
    func login(paremeters: [AnyHashable : Any], completionHandler: @escaping (Result<UserModel, Error>) -> Void) {
        let body: NSDictionary = paremeters[Constants.ParametersKeys.body] as! NSDictionary
        let userModel = body[Constants.ParametersKeys.userModel] as! UserModel
        
        self.auth.signIn(withEmail: userModel.email, password: userModel.password) { (result, error) in
            if let error = error {
                completionHandler(.failure(error))
            } else {
                completionHandler(.success(userModel))
            }
        }
    }
    
    func register(paramenters: [AnyHashable : Any], completionHandler: @escaping (Result<UserModel, Error>) -> Void) {
        let body: NSDictionary = paramenters[Constants.ParametersKeys.body] as! NSDictionary
        let userModel = body[Constants.ParametersKeys.userModel] as! UserModel
        
        self.auth.createUser(withEmail: userModel.email, password: userModel.password) { (result, error) in
            if let error = error {
                completionHandler(.failure(error))
            } else {
                completionHandler(.success(userModel))
            }
        }
    }
    
    
}
