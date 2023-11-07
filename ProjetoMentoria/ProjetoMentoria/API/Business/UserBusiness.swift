//
//  UserBusiness.swift
//  ProjetoMentoria
//
//  Created by Cesar Silva on 06/11/23.
//

import Foundation

protocol UserBusinessProtocol {
    func login(email: String, password: String, completionHandler: @escaping(Result<UserModel, Error>) -> Void)
    func register(email: String, password: String, completionHandler: @escaping(Result<UserModel, Error>) -> Void)
}

class UserBusiness: UserBusinessProtocol {
    let provider = UserProvider()
    
    func login(email: String, password: String, completionHandler: @escaping (Result<UserModel, Error>) -> Void) {
        
        provider.login(paremeters: getParams(email: email, password: password)) { result in
            
            switch result {
                
            case .success(let userModel):
                completionHandler(.success(userModel))
                
            case .failure(let error):
                completionHandler(.failure(error))
                
            }
        }
    }
    
    func register(email: String, password: String, completionHandler: @escaping (Result<UserModel, Error>) -> Void) {
        
        provider.register(paramenters: getParams(email: email, password: password)) { result in
            
            switch result {

            case .success(let userModel):
                completionHandler(.success(userModel))
            case .failure(let error):
                completionHandler(.failure(error))
                
            }
        }
    }
    
    private func getParams(email: String, password: String) -> [AnyHashable: Any] {
        let userModel = UserModel(email: email, password: password)
        let params: [AnyHashable: Any] = [Constants.ParametersKeys.body: [Constants.ParametersKeys.userModel: userModel]]
        
        return params
    }
}
