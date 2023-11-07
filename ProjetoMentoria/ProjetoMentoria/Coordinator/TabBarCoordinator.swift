//
//  TabBarCoordinator.swift
//  ProjetoMentoria
//
//  Created by Cesar Silva on 06/11/23.
//

import Foundation
import UIKit

class TabBarCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = TabBarController()
        viewController.modalPresentationStyle = .fullScreen
        navigationController.present(viewController, animated: true)
    }

}
