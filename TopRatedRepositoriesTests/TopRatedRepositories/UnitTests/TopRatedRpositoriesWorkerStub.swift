//
//  TopRatedRpositoriesWorkerStub.swift
//  TopRatedRepositoriesTests
//
//  Created by Mauro Sasso Coletes on 14/04/19.
//  Copyright © 2019 MSC. All rights reserved.
//

@testable import TopRatedRepositories

enum ReturnTypes {
    case requestFailed
    case jsonParsingFailure
    case responseUnsuccessful(statusCode: Int)
    case success
}

class TopRatedRpositoriesWorkerStub: TopRatedRepositoriesWorker {
    var returnTypes: ReturnTypes = .success
    override func fetchTopRatedRepositories(request: TopRatedRepositoriesModels.Request, onSuccess: @escaping (Repositories) -> Void, onError: @escaping (ServiceError) -> Void) {
        switch returnTypes {
        case .success:
            if let repositories: Repositories = JsonLoader.loadFromJsonFile(jsonFileName: "topRepositories"){
                onSuccess(repositories)
            }
        case .requestFailed:
            onError(ServiceError.requestFailed)
        case .jsonParsingFailure:
            onError(ServiceError.jsonParsingFailure)
        case .responseUnsuccessful(_):
            onError(ServiceError.responseUnsuccessful(statusCode: 500))
        }
    }
}
