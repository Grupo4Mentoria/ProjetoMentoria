//
//  SDKNetworkLogger.swift
//  SDKNetwork
//
//  Created by Gilmar Junior on 05/09/23.
//

import Foundation

protocol Printable {
    func debugText(_ text: String)
}

public class SDKNetworkLogger {
    
    let logger: Printable
    
    init(logger: Printable = NetworkLogger()) {
        self.logger = logger
    }
    
    func debugRequest(_ clientParams: Endpoint) {
        let requestString = """
                            [NetworkDebug] REQUEST:
                            url: \(clientParams.url)
                            httpMethod: \(clientParams.method)
                            headers: \(String(describing: clientParams.headers))
                            parameters: \(String(describing: clientParams.parameters))
                            """
        logger.debugText(requestString)
    }
    
    func debugResponse(_ response: Any, _ statusCode: Int) {
        var debugMessage = """
                           [NetworkDebug] RESPONSE:
                           statusCode: \(statusCode)
                           """
        
        if let responseString = response as? String {
            debugMessage += "\n \(responseString)"
            logger.debugText(debugMessage)
        } else if let responseData = response as? Data {
            debugMessage += "\n \(responseData.toString() ?? String.empty)"
            logger.debugText(debugMessage)
        }
    }
    
    func debugError(_ error: NetworkError) {
        logger.debugText("[NetworkDebug] RESPONSE: \n \(error.errorDescription ?? "ERROR")")
    }
    
}

struct NetworkLogger: Printable {
    func debugText(_ text: String) {
        if CommandLine.arguments.contains("SDKNetworkDebugEnabled") {
            debugPrint("----------------------------------------------------")
            debugPrint(text)
            debugPrint("----------------------------------------------------")
        }
        
    }
    
}
