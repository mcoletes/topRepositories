//
//  TopRatedRepositoriesViewControllerTests.swift
//  TopRatedRepositoriesTests
//
//  Created by Mauro Sasso Coletes on 11/04/19.
//  Copyright © 2019 MSC. All rights reserved.
//

import Quick
import Nimble
import Nimble_Snapshots

@testable import TopRatedRepositories

class TopRatedRepositoriesViewControllerTests: QuickSpec {
    
    override func spec() {
        
        describe("TopRatedRepositoriesViewController") {
            
            var vc: TopRatedRepositoriesViewController!
            var presenter: TopRatedRepositoriesPresenter!
            var interactor: MockTopRatedRepositoriesInteractor!
            
            beforeEach {
                vc = TopRatedRepositoriesViewController()
                vc.view.translatesAutoresizingMaskIntoConstraints = false
                let window = UIWindow(frame: UIScreen.main.bounds)
                window.makeKeyAndVisible()
                window.rootViewController = vc
                presenter = TopRatedRepositoriesPresenter()
                presenter.viewController = vc
                interactor = MockTopRatedRepositoriesInteractor()
                interactor.presenter = presenter
                vc.interactor = interactor
                vc.viewDidAppear(true)
            }
            afterEach {
                vc = nil
                presenter = nil
                interactor = nil
            }
            
            it("should present loading state") {
                expect(vc) == snapshot()
            }
            it("should display top 30 repositories") {
                interactor.fetchRepositories()
                expect(interactor.numbeOfRows()).to(equal(30))
                expect(interactor.items.first?.name).to(equal("awesome-ios"))
                expect(vc) == snapshot()
            }
            it("should display refresh content") {
                vc.handleRefresh(UIRefreshControl())
                expect(interactor.numbeOfRows()).to(equal(30))
                expect(interactor.items.first?.name).to(equal("awesome-ios"))
                expect(vc) == snapshot()
            }
        }
    }
}
