//
//  ThemeComponentProvider.swift
//  SDKNetwork
//
//  Created by Alex Sandro on 03/09/23.
//

import Foundation

public class ThemeComponentProvider {
    public init() {
        
    }
    
    let networkService = NetworkService()
    
    public func getThemeComponentList(themeId: Int, completion: @escaping (Result<[ThemeComponentModel], NetworkError>) -> Void) {
        let EndPoint = Endpoint(url: "\(Constants.baseURL)/\(Constants.themeComponentAPI)/GetListaThemeComponent?themeId=\(themeId)&uIdFirebase=\(Constants.defaultToken)")
        
        return networkService.request(with: EndPoint, decodeType: [ThemeComponentModel].self, completionHandler: completion)
    }
    
    public func getThemeComponentById(id: Int, completion: @escaping (Result<ThemeComponentByIdModel, NetworkError>) -> Void) {
        let EndPoint = Endpoint(url: "\(Constants.baseURL)/\(Constants.themeComponentAPI)/GetThemeComponentById?id=\(id)&uIdFirebase=\(Constants.defaultToken)")
        
        return networkService.request(with: EndPoint, decodeType: ThemeComponentByIdModel.self, completionHandler: completion)
    }
    
}
