//
//  UIComponentsFactory.swift
//  DSM
//
//  Created by Cesar Silva on 20/09/23.
//

import Foundation
import UIKit

public struct UIComponentsFactory {
    
    public static let shared = UIComponentsFactory()
        
    //MARK: - UIButton
    public func createButton(themeId: Int, component: String, title: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle(title, for: .normal)
        button.layer.cornerRadius = 16
        
        updateButtonLayout(button, themeId: themeId, component: component)
        
        return button
    }
    
    public func updateButtonLayout(_ button: UIButton, themeId: Int, component: String) {
        let viewModel = DSMFactory.shared.themeComponentViewModel
        button.backgroundColor = UIColor.getUIColor(viewModel.getComponentBackgroundColor(themeId: themeId, name: component))
        button.setTitleColor(UIColor.getUIColor(viewModel.getComponentForegroundColor(themeId: themeId, name: component)), for: .normal)
        button.titleLabel?.font = UIFont(name: viewModel.getComponentFontName(themeId: themeId, name: component),
                                         size: CGFloat(viewModel.getComponentFontSize(themeId: themeId, name: component)))
    }
    
    //MARK: - UITextField
    public func createTextField(themeId: Int, component: String, placeholder: String) -> UITextField {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.placeholder = placeholder
        textField.layer.cornerRadius = 8
        textField.setLeftPaddingPoints(15)
        
        updateTextFieldLayout(textField, themeId: themeId, component: component)
        
        return textField
    }
    
    public func updateTextFieldLayout(_ textField: UITextField, themeId: Int, component: String) {
        let viewModel = DSMFactory.shared.themeComponentViewModel
        textField.backgroundColor = UIColor.getUIColor(viewModel.getComponentBackgroundColor(themeId: themeId, name: component))
        textField.textColor = UIColor.getUIColor(viewModel.getComponentForegroundColor(themeId: themeId, name: component))
        textField.font = UIFont(name: viewModel.getComponentFontName(themeId: themeId, name: component),
                                size: CGFloat(viewModel.getComponentFontSize(themeId: themeId, name: component)))
    }
    
    //MARK: - UILabel
    public func createLabel(themeId: Int, component: String, text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = text
        
        updateLabelLayout(label, themeId: themeId, component: component)
        
        return label
    }
    
    public func updateLabelLayout(_ label:UILabel, themeId: Int, component: String) {
        let viewModel = DSMFactory.shared.themeComponentViewModel
        label.backgroundColor = UIColor.getUIColor(viewModel.getComponentBackgroundColor(themeId: themeId, name: component))
        label.textColor = UIColor.getUIColor(viewModel.getComponentForegroundColor(themeId: themeId, name: component))
        label.font = UIFont(name: viewModel.getComponentFontName(themeId: themeId, name: component),
                                size: CGFloat(viewModel.getComponentFontSize(themeId: themeId, name: component)))
    }
    
    //MARK: - UIView
    public func createView(themeId: Int, component: String) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        updateViewLayout(view, themeId: themeId, component: component)
        
        return view
    }
    
    func updateViewLayout(_ view: UIView, themeId: Int, component: String) {
        let viewModel = DSMFactory.shared.themeComponentViewModel
        view.backgroundColor = UIColor.getUIColor(viewModel.getComponentBackgroundColor(themeId: themeId, name: component))
    }
}
