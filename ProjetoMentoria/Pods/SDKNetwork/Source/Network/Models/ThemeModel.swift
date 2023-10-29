//
//  ThemeModel.swift
//  SDKNetwork
//
//  Created by Alex Sandro on 02/09/23.
//

import Foundation

public struct ThemeModel: Codable {
    public let name: String?
    public let id: Int?
    public let isInativo: Bool?
    public let creationDate: String?
    public let changeDate: String?
    public let uid: String?
    public let uidFirebase: String?
    public let isChanged: Bool?
    
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case id = "Id"
        case isInativo = "IsInativo"
        case creationDate = "CreationDate"
        case changeDate = "ChangeDate"
        case uid = "Uid"
        case uidFirebase = "UidFirebase"
        case isChanged = "IsChanged"
    }
}
