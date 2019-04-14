//
//  TopRatedRepositoriesProvider.swift
//  TopRatedRepositories
//
//  Created by Mauro Sasso Coletes on 11/04/19.
//  Copyright © 2019 MSC S/A. All rights reserved.
//

import Foundation

class TopRatedRepositoriesProvider: URLRequestProtocol {

    init(page: Int = 0) {
        self.page = page
    }
    
    var page: Int
    
    var path: String = "/search/repositories"
    
    var httpMethod: HTTPMethod = .get

    func urlParameters() -> [URLQueryItem] {
        
        return [URLQueryItem(name: "q", value: "language:swift"), URLQueryItem(name: "sort", value: "stars"),URLQueryItem(name: "per_page", value: "30"), URLQueryItem(name: "page", value: "\(page)")]
    }
}
