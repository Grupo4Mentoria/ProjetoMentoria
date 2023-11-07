//
//  RegisterCoordinator.swift
//  ProjetoMentoria
//
//  Created by Cesar Silva on 06/11/23.
//

import Foundation
import UIKit

class RegisterCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = RegisterViewController()
        
        viewController.onRegisterSuccess = {
            self.navigationController.popToRootViewController(animated: true)
        }
        
        navigationController.pushViewController(viewController, animated: true)
    }

}
