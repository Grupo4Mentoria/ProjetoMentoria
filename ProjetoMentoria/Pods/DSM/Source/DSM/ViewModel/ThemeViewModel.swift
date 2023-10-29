//
//  ThemeViewModel.swift
//  DSM
//
//  Created by Cesar Silva on 12/09/23.
//

import Foundation
import SDKNetwork

class ThemeViewModel {
    
    private let themeProvider = ThemeProvider()
    var themeModels: [ThemeModel] = []
    
    func getThemeName(id : Int) -> String? {
        guard let model = themeModels.filter({$0.id == id}).first,
              let name = model.name else {
            return ""
        }
        return name
    }
    
    func getThemeId(name: String) -> Int {
        guard let model = themeModels.filter({$0.name == name}).first,
              let id = model.id else {
            return 0
        }
        return id
    }
}
