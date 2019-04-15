//
//  MockTopRatedRepositoriesInteractor.swift
//  TopRatedRepositoriesTests
//
//  Created by Mauro Sasso Coletes on 14/04/19.
//  Copyright © 2019 MSC. All rights reserved.
//

@testable import TopRatedRepositories


class MockTopRatedRepositoriesInteractor: TopRatedRepositoriesInteractor {
    override func fetchRepositories() {
        if let repositories: Repositories = JsonLoader().loadFromJsonFile(jsonFileName: "topRepositories"), let items = repositories.items {
            self.items = items
            presenter?.reloadTable()
        }
    }
}


