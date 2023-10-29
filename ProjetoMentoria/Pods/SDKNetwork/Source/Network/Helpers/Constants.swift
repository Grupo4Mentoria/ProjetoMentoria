//
//  Constants.swift
//  SDKNetwork
//
//  Created by Alex Sandro on 02/09/23.
//

import Foundation

public struct Constants {
    public static let defaultToken = "CodandoComMoa"
    public static let baseURL = "http://mentoria.codandocommoa.com.br"
    public static let themeAPI = "Api/Theme"
    public static let themeComponentAPI = "Api/ThemeComponent"
}

extension String {
    static let empty = String()
}

extension Data {
    func toString() -> String? {
        return String(data: self, encoding: .utf8)
    }
}
