//
//  ThemeProvider.swift
//  SDKNetwork
//
//  Created by Alex Sandro on 02/09/23.
//

import Foundation

public class ThemeProvider {
    public init() {
        
    }
    
    let networkService = NetworkService()
    
    public func getThemeList(completion: @escaping (Result<[ThemeModel], NetworkError>) -> Void) {
        let EndPoint = Endpoint(url: "\(Constants.baseURL)/\(Constants.themeAPI)/GetListaTheme?uIdFirebase=\(Constants.defaultToken)")
        
        return networkService.request(with: EndPoint, decodeType: [ThemeModel].self, completionHandler: completion)
    }
    
    public func getThemeById(id: Int, completion: @escaping (Result<ThemeByIdModel, NetworkError>) -> Void) {
        let EndPoint = Endpoint(url: "\(Constants.baseURL)/\(Constants.themeAPI)/GetThemeById?id=\(id)&uIdFirebase=\(Constants.defaultToken)")
        
        return networkService.request(with: EndPoint, decodeType: ThemeByIdModel.self, completionHandler: completion)
    }
    
}
