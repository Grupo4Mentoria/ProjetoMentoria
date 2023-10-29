//
//  ThemeComponentById.swift
//  SDKNetwork
//
//  Created by Alex Sandro on 03/09/23.
//

import Foundation

public struct ThemeComponentByIdModel: Codable {
    public let result: ThemeComponentModel?
    public let resultJson: String?
    public let isSuccess: Bool?
    public let message: String?
    public let exception: Exception
    public let stackTrace: String?
    
    public struct Exception: Codable {
        // if necessary
    }
    
    enum CodingKeys: String, CodingKey {
        case result = "Result"
        case resultJson = "ResultJson"
        case isSuccess = "IsSucess"
        case message = "Message"
        case exception = "Exception"
        case stackTrace = "StackTrace"
    }
}
