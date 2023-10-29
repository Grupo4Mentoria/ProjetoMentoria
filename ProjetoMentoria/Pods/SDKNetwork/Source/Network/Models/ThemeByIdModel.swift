//
//  ThemeById.swift
//  SDKNetwork
//
//  Created by Alex Sandro on 02/09/23.
//

import Foundation

public struct ThemeByIdModel: Codable {
    let result: ThemeModel?
    let resultJson: String?
    let isSuccess: Bool?
    let message: String?
    let exception: String?
    let stackTrace: String?
    
    enum CodingKeys: String, CodingKey {
        case result = "Result"
        case resultJson = "ResultJson"
        case isSuccess = "IsSuccess"
        case message = "Message"
        case exception = "Exception"
        case stackTrace = "StackTrace"
    }
}



