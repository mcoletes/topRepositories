//
//  TopRatedRepositoriesWorker.swift
//  TopRatedRepositories
//
//  Created by Mauro Sasso Coletes on 11/04/19.
//  Copyright (c) 2019 MSC. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import Foundation

class TopRatedRepositoriesWorker {
    
    func fetchTopRatedRepositories(request: TopRatedRepositoriesModels.Request, onSuccess: @escaping (Repositories) -> Void, onError: @escaping (ServiceError) -> Void) {
        let topRatedRepositoriesProvider = TopRatedRepositoriesProvider(page: request.page)
        NetworkProvider(route: topRatedRepositoriesProvider).fetch(onSuccess: onSuccess, onError: onError)
    }
}
