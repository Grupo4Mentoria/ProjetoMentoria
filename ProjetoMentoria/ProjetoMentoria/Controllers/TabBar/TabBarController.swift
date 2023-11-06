//
//  TabBarController.swift
//  ProjetoMentoria
//
//  Created by Cesar Silva on 30/10/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarControllers()
    }
    
    private func setupTabBarControllers() {
        let profileVC = ProfileViewController()
        let serviceVC = ServiceViewController()
        let scheduleVC = ScheduleViewController()
        self.setViewControllers([profileVC, serviceVC, scheduleVC], animated: false)
        
        tabBar.layer.borderWidth = 0.5
        tabBar.layer.borderColor = UIColor.darkGray.cgColor
        tabBar.backgroundColor = .darkGray
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .lightGray
        
        guard let items = tabBar.items else { return }
        
        items[0].title = "Perfil"
        items[0].image = UIImage(systemName: "person")
        
        items[1].title = "Seu Serviço"
        items[1].image = UIImage(systemName: "wrench.and.screwdriver.fill")
        
        items[2].title = "Agenda"
        items[2].image = UIImage(systemName: "calendar")
    }

}
