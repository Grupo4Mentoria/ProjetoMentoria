//
//  ThemeComponentViewModel.swift
//  DSM
//
//  Created by Cesar Silva on 12/09/23.
//

import Foundation
import SDKNetwork

class ThemeComponentViewModel {
    
    var themeComponentData = [Int:[ThemeComponentModel]]()
    
    func getComponentName(themeId: Int, id: Int) -> String {
        guard let themeComponentModel = themeComponentData[themeId],
              let model = themeComponentModel.filter({$0.id == id}).first,
              let name = model.name else {
            return ""
        }
        return name
    }
    
    func getComponentForegroundColor(themeId: Int, name: String) -> String {
        guard let themeComponentModel = themeComponentData[themeId],
              let model = themeComponentModel.filter({$0.name == name}).first,
              let foregroundColor = model.foregroundColor else {
            return ""
        }
        return foregroundColor
    }
    
    func getComponentBackgroundColor(themeId: Int, name: String) -> String {
        guard let themeComponentModel = themeComponentData[themeId],
              let model = themeComponentModel.filter({$0.name == name}).first,
              let backgroundColor = model.backgroundColor else {
            return ""
        }
        return backgroundColor
    }
    
    func getComponentFontName(themeId: Int, name: String) -> String {
        guard let themeComponentModel = themeComponentData[themeId],
              let model = themeComponentModel.filter({$0.name == name}).first,
              let fontName = model.fontName else {
            return ""
        }
        return fontName
    }
    
    func getComponentFontSize(themeId: Int, name: String) -> Int {
        guard let themeComponentModel = themeComponentData[themeId],
              let model = themeComponentModel.filter({$0.name == name}).first,
              let fontSize = model.fontSize else {
            return 0
        }
        return fontSize
    }
}
