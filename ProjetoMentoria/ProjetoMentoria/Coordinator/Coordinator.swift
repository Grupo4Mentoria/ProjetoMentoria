//
//  Coordinator.swift
//  ProjetoMentoria
//
//  Created by Cesar Silva on 06/11/23.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get }
    init(navigationController: UINavigationController)
    func start()
    
}
