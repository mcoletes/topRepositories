//
//  TopRatedRepositoriesPresenterSpy.swift
//  TopRatedRepositoriesTests
//
//  Created by Mauro Sasso Coletes on 14/04/19.
//  Copyright © 2019 MSC. All rights reserved.
//

@testable import TopRatedRepositories
import Foundation

class TopRatedRepositoriesPresenterSpy: TopRatedRepositoriesPresentationLogic {
    var invokedReloadTable = false
    var invokedReloadTableCount = 0
    func reloadTable() {
        invokedReloadTable = true
        invokedReloadTableCount += 1
    }
    var invokedDisplayError = false
    var invokedDisplayErrorCount = 0
    var invokedDisplayErrorParameters: (type: TopRatedRepositoriesModels.errors, Void)?
    var invokedDisplayErrorParametersList = [(type: TopRatedRepositoriesModels.errors, Void)]()
    var shouldInvokeDisplayErrorTryAgainAction = false
    func displayError(type: TopRatedRepositoriesModels.errors, tryAgainAction: EmptyClosure?) {
        invokedDisplayError = true
        invokedDisplayErrorCount += 1
        invokedDisplayErrorParameters = (type, ())
        invokedDisplayErrorParametersList.append((type, ()))
        if shouldInvokeDisplayErrorTryAgainAction {
            _ = tryAgainAction?()
        }
    }
    var invokedPresentEndRefreshControl = false
    var invokedPresentEndRefreshControlCount = 0
    func presentEndRefreshControl() {
        invokedPresentEndRefreshControl = true
        invokedPresentEndRefreshControlCount += 1
    }
    var invokedPresentViewModelFromModel = false
    var invokedPresentViewModelFromModelCount = 0
    var invokedPresentViewModelFromModelParameters: (repository: Repository, Void)?
    var invokedPresentViewModelFromModelParametersList = [(repository: Repository, Void)]()
    func presentViewModelFromModel(repository: Repository) -> TopRatedRepositoriesModels.ViewModel? {
        invokedPresentViewModelFromModel = true
        invokedPresentViewModelFromModelCount += 1
        invokedPresentViewModelFromModelParameters = (repository, ())
        invokedPresentViewModelFromModelParametersList.append((repository, ()))
        return TopRatedRepositoriesModels.ViewModel(name: repository.name ?? "", stars: repository.stargazersCount ?? 0, ownerName: repository.owner?.login ?? "", ownerPhotoURL: URL(string: repository.owner!.avatarUrl!)!)
    }
}
