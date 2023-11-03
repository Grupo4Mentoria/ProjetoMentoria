//
//  UITextField+.swift
//  DSM
//
//  Created by Cesar Silva on 22/09/23.
//

import Foundation
import UIKit

extension UITextField {
    func setLeftPaddingPoints(_ amount: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}
