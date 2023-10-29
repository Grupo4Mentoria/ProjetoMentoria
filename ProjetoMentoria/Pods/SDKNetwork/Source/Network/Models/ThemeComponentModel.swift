//
//  ThemeComponentModel.swift
//  SDKNetwork
//
//  Created by Alex Sandro on 03/09/23.
//

import Foundation

public struct ThemeComponentModel: Codable {
    public let themeId: Int?
    public let theme: ThemeModel?
    public let name: String?
    public let foregroundColor: String?
    public let backgroundColor: String?
    public let fontName: String?
    public let fontSize: Int?
    public let style: Int?
    public let id: Int?
    public let isInativo: Bool?
    public let creationDate: String?
    public let changeDate: String?
    public let uid: String?
    public let uidFirebase: String?
    public let isChanged: Bool?
    
    enum CodingKeys: String, CodingKey {
        case themeId = "ThemeId"
        case theme = "Theme"
        case name = "Name"
        case foregroundColor = "ForegroundColor"
        case backgroundColor = "BackgroundColor"
        case fontName = "FontName"
        case fontSize = "FontSize"
        case style = "Style"
        case id = "Id"
        case isInativo = "IsInativo"
        case creationDate = "CreationDate"
        case changeDate = "ChangeDate"
        case uid = "Uid"
        case uidFirebase = "UidFirebase"
        case isChanged = "IsChanged"
    }
}
