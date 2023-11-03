//
//  UIColor+.swift
//  DSM
//
//  Created by Cesar Silva on 26/09/23.
//

import Foundation
import UIKit

extension UIColor {
    
    static func getUIColor(_ string: String) -> UIColor {
        
        if string.hasPrefix("#") {
            return self.hexToColor(string) ?? colorError()
        }
        
        switch string {
        case "white":
            return .white
        case "black":
            return .black
        case "green":
            return .green
        case "blue":
            return .blue
        case "red":
            return .red
        case "yellow":
            return .yellow
        case "transparent":
            return .clear
        default:
            return colorError()
        }
    }
    
    static func colorError() -> UIColor {
        debugPrint("Color not found")
        return .orange
    }
    
    static func hexToColor(_ hex: String) -> UIColor? {
        var formattedHex = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        formattedHex = formattedHex.replacingOccurrences(of: "#", with: "")
        
        var rgb: UInt64 = 0
        
        Scanner(string: formattedHex).scanHexInt64(&rgb)
        
        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}
