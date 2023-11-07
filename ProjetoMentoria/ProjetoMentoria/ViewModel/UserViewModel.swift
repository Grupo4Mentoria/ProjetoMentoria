//
//  UserViewModel.swift
//  ProjetoMentoria
//
//  Created by Cesar Silva on 07/11/23.
//

import Foundation

class UserViewModel {
    
    private let model: UserModel
    
    init(model: UserModel) {
        self.model = model
    }
    
    init() {
        self.model = UserModel()
    }
    
    var email: String {
        model.email
    }
    
    func getUserFromApi(_ email: String, _ password: String, completion: @escaping(Result<UserViewModel, Error>) -> Void) {
        let business = UserBusiness()
        business.login(email: email, password: password) { result in
            switch result {
            case .success(let userModel):
                completion(.success(UserViewModel(model: userModel)))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func setUserFromApi(_ email: String, _ password: String, completion: @escaping(Result<UserViewModel, Error>) -> Void) {
        let business = UserBusiness()
        business.register(email: email, password: password) { result in
            switch result {
            case .success(let userModel):
                completion(.success(UserViewModel(model: userModel)))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
