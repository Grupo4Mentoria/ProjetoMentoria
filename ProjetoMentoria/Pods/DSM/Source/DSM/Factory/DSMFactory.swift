//
//  DSMFactory.swift
//  DSM
//
//  Created by Cesar Silva on 19/09/23.
//

import Foundation
import SDKNetwork

class DSMFactory: NSObject {
    
    static let shared = DSMFactory()
    
    private let themeProvider = ThemeProvider()
    private let themeComponentProvider = ThemeComponentProvider()
    
    let themeViewModel = ThemeViewModel()
    let themeComponentViewModel = ThemeComponentViewModel()
    
    func getThemesData(completion: @escaping(() -> Void)) {
        DispatchQueue.global(qos: .background).async {
            self.themeProvider.getThemeList { result in
                switch result {
                case .success(let response):
                    self.themeViewModel.themeModels = response
                    self.getComponentsData {
                        completion()
                    }
                case .failure(let failure):
                    print(failure)
                }
            }
        }
    }
    
    func getComponentsData(completion: @escaping(() -> Void)) {
        self.themeViewModel.themeModels.forEach { themeModel in
            if let id = themeModel.id {
                self.getThemeComponents(themeId: id) {
                    completion()
                }
            }
        }
    }
    
    private func getThemeComponents(themeId: Int, completion: @escaping(() -> Void)) {
        DispatchQueue.global(qos: .background).async {
            self.themeComponentProvider.getThemeComponentList(themeId: themeId) { result in
                switch result {
                case .success(let response):
                    self.themeComponentViewModel.themeComponentData[themeId] = response
                    completion()
                case .failure(let failure):
                    print(failure)
                }
            }
        }
    }
}
